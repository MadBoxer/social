class User < ActiveRecord::Base
  attr_accessible :about_myself, :activities, :city_id, :email, :favourite_books, :favourite_films, :favourite_games, 
                  :favourite_phrases, :favourite_tv_shows, :marital_status_id, :material_id, :mobile_phone, :name, :password, :password_confirmation,
                  :politic_id, :religion_id, :skype, :surname, :web_site, :sex, :birth_date, :native_city, :universities_relations_attributes
  attr_accessor :password
  
  belongs_to :user, :class_name => 'UserAlbum'
  has_many :albums
  has_many :universities_relations, :class_name => "UsersUniversity"
  accepts_nested_attributes_for :universities_relations#:users_universities
  belongs_to :city
  validates :name, :surname, :email, :user_hash, :presence => true, :length => {:maximum => 50 }
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  validates :activities, :favourite_books, :favourite_films, :favourite_games, :favourite_phrases, :favourite_tv_shows, :about_myself, :length => {:maximum => 5500}
  validates :password, :length => {:minimum => 6, :maximum => 30}, :presence => true, :confirmation => true
  validates_confirmation_of :password
  
  mount_uploader :avatar, AvatarUploader
  #has_one :user_attr, :foreign_key => :material_id
  #accepts_nested_attributes_for :user_attr, :allow_destroy => true
  
  
  def not_zero?(attr)
    a = self.send(attr)
    if a != 0 && a != '' && a != nil
      true
    else
      false
    end
  end
  
  def not_zero!(attr)
    a = self.send(attr)
    if a != 0 && !a.empty?
      self
    else
      nil
    end
  end
  
  def gen_hash
    self.user_hash = Digest::MD5.hexdigest(rand(100000000).to_s)
  end
  
  def self.register_prepare(args)
    #args[:password] = Digest::MD5.hexdigest(args[:password])
    #args[:password_confirmation] = Digest::MD5.hexdigest(args[:password_confirmation])
    user = self.new(args)
    user.active = 1
    user.gen_hash
    user
  end
  
  def reset_password
    self.password = Digest::MD5.hexdigest(self.password)
    self.save
    self
  end
  
end
