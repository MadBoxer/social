class Setting < ActiveRecord::Base
  attr_accessible :setting_type_id, :sort, :value, :alias, :name
  
  validates :value, :presence => true
  #validates :alias, :format => {:with => /[0-9a-z]+/} 
  validates_format_of :alias, :with => /^[-0-9a-z]+$/i
  
  belongs_to :setting_type#, :foreign_key => :setting_type
  
  scope :politics, lambda{where(:setting_type_id => 1)}
  scope :religions, lambda{where(:setting_type_id => 2)}
  scope :maritalstatuses, lambda{where(:setting_type_id => 5)}
  scope :countries, lambda{where(:setting_type_id => 3)}
  scope :cities, lambda{where(:setting_type_id => 4)}
  scope :sexes, lambda{where(:setting_type_id => 6)}
  scope :studentstatuses, lambda{where(:setting_type_id => 7)}
  
  scope :not_null, lambda{where(:id != 0).all}
  
  
end