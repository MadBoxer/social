class Country < Setting
  attr_accessible :name
  attr_accessible :setting_image, :setting_image_attributes
  has_many :cities
  
  has_one :setting_image, :foreign_key => :setting_id
  accepts_nested_attributes_for :setting_image
  
  def self.get_all(pars)
    City.where(:country_id => pars[:country]).all
  end
end