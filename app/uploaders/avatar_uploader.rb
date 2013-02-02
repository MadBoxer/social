class AvatarUploader < CarrierWave::Uploader::Base

  include CarrierWave::RMagick
  storage :file
  
  version :avatar do
     process :resize_to_fit => [200, 400]
     process :convert => 'jpg'
  end
  
  version :mini do
     process :resize_to_fit => [100, 100]
     process :convert => 'jpg'
  end
  
  version :large do
     process :resize_to_fit => [620, 570]
     process :convert => 'jpg'
  end
  
  def store_dir
    "uploads/users/avatars/#{model.id}"
  end

end
