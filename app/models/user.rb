class User < ActiveRecord::Base
  attr_accessible :about_myself, :activities, :city_id, :email, :favourite_books, :favourite_films, :favourite_games, 
                  :favourite_phrases, :favourite_tv_shows, :marital_status_id, :material_id, :mobile_phone, :name, :password, :password_confirmation,
                  :politic_id, :religion_id, :skype, :surname, :web_site, :sex, :birth_date, :native_city, :universities_relations_attributes
  
  belongs_to :user, :class_name => 'UserAlbum'
  has_many :albums
  has_many :universities_relations, :class_name => "UsersUniversity"
  accepts_nested_attributes_for :universities_relations#:users_universities
  belongs_to :city
  validates :name, :surname, :email, :user_hash, :presence => true, :length => {:maximum => 50 }
  validates :email, :uniqueness => true
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  validates :activities, :favourite_books, :favourite_films, :favourite_games, :favourite_phrases, :favourite_tv_shows, :about_myself, :length => {:maximum => 5500}
  validates :password, :length => {:minimum => 6, :maximum => 32}, :presence => true, :confirmation => true
  validates_confirmation_of :password
  
  has_many :messages
  #accepts_nested_attributes_for :messages
  has_and_belongs_to_many :friends, :class_name => 'User', :foreign_key => 'user_id', :association_foreign_key => 'friend_id', :join_table => 'user_friends'
  
  mount_uploader :avatar, AvatarUploader
  #has_one :user_attr, :foreign_key => :material_id
  #accepts_nested_attributes_for :user_attr, :allow_destroy => true
  scope :active, ->(cond = nil){where(:active => true).where(cond)}
  
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
    self.update_attribute('password', Digest::MD5.hexdigest(self.password))
  end
  
  def get_fresh_messages_count
    Message.where(:reciever_id => self.id).where(:is_read => false).all.length
  end
  
  def dialog(user_id)
    Message.where('(messenger = ' + self.id.to_s+ ' AND reciever_id = ' + user_id.to_s + ') or (reciever_id = ' + self.id.to_s + ' and messenger = ' + user_id.to_s + ')').order('created_at asc')
    #Message.where(:messenger => user_id).where(:reciever_id => self.id).or.where(:reciever_id => user_id).where(:messenger => self.id).order('created_at asc')
  end
  
=begin
  def dialogs
    User.find_by_sql('
    SELECT msg.* FROM 
    (
        SELECT m.* , um.user_id 
        FROM messages as m 
        INNER JOIN users_messages as um ON m.id = um.message_id 
        WHERE um.user_id = ' + self.id.to_s + '
        ORDER BY m.id DESC
    ) AS msg
    GROUP BY msg.messenger')
  end
=end
  
  def last_dialog_message(user_id)
    Message.where('(messenger = ' + self.id.to_s+ ' AND reciever_id = ' + user_id.to_s + ') or (reciever_id = ' + self.id.to_s + ' and messenger = ' + user_id.to_s + ')').order('created_at DESC').limit(1).all
  end
  
  def dialogs
    Message.select(:reciever_id).where(:messenger => self.id).group(:reciever_id)
  end
  
end
