# encoding: utf-8

class AlbumPhotoUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick
  storage :file
 
  version :mini do
     process :resize_to_fit => [130, 120]
     process :convert => 'jpg'
  end
  
  version :maxi do
     process :resize_to_fit => [600, 500]
     process :convert => 'jpg'
  end
 
  def store_dir
    "uploads/albums/#{model.class.to_s.underscore}/#{mounted_as}/#{model.id}"
  end
end
