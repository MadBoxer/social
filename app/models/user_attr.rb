class UserAttr < ActiveRecord::Base
  attr_accessible :about_myself, :activities, :city_id, :email, :favourite_books, :favourite_films, :favourite_games, :favourite_phrases, :favourite_tv_shows, :marital_status_id, :material_id, :mobile_phone, :name, :password, :politic_id, :religion_id, :skype, :surname, :web_site, :sex, :birth_date
  
  belongs_to :user
  belongs_to :city
  validates :name, :surname, :email, :presence => true, :length => {:maximum => 50 }
  validates_format_of :email, :with => /\A[A-Za-z0-9._%+-]+@[A-Za-z0-9.-]+\.[A-Za-z]+\z/
  validates :activities, :favourite_books, :favourite_films, :favourite_games, :favourite_phrases, :favourite_tv_shows, :about_myself, :length => {:maximum => 5500}
end