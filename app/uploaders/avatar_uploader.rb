class AvatarUploader < CarrierWave::Uploader::Base
  include Cloudinary::CarrierWave
  def cache_dir
    "#{Rails.root}/tmp/uploads"
  end
end
