class Photo < ActiveRecord::Base
  attr_accessible :description, :path
  belongs_to :album
  
  mount_uploader :path, AlbumPhotoUploader
end
