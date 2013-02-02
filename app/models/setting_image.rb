class SettingImage < ActiveRecord::Base
  attr_accessible :path, :setting_id
  belongs_to :setting
  
  mount_uploader :path, SettingImageUploader
end
