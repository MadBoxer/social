class Faculty < ActiveRecord::Base
  attr_accessible :name, :university_id
  belongs_to :university
  validates :name, :university_id, :presence => true
end
