class Album < ActiveRecord::Base
  attr_accessible :alias, :announce, :description, :name, :photos, :photos_attributes, :id
  has_many :photos, :dependent => :destroy
  accepts_nested_attributes_for :photos, :allow_destroy  => true
end