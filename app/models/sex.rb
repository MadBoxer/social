class Sex < Setting
  attr_accessible :setting_image, :setting_image_attributes
  
  has_one :setting_image, :foreign_key => :setting_id
  accepts_nested_attributes_for :setting_image
  
end
