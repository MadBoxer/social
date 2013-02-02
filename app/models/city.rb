class City < ActiveRecord::Base
  attr_accessible :alias, :city_image, :country_id, :name
  belongs_to :country
  has_many :universities
  
  mount_uploader :city_image, SettingImageUploader
  
  def self.get_all(pars)
    University.where(:city_id => pars[:city]).all
  end
end
