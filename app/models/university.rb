class University < ActiveRecord::Base
  attr_accessible :abbr, :city_id, :name
  validates :name, :abbr, :city_id, :presence => true
  validates :abbr, :length => {:maximum => 30, :minimum => 3}
  belongs_to :city
  has_many :faculties
  
  
  def self.get_faculties(pars)
    Faculty.where(:university_id => pars[:university]).all
  end
  
end
