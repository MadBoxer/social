class SettingType < ActiveRecord::Base
  attr_accessible :alias, :name
  
  has_many :settings
  accepts_nested_attributes_for :settings, :allow_destroy => true
end
