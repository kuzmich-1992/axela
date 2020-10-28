class Adpost < ApplicationRecord
  do_not_validate_attachment_file_type :avatar
  mount_uploader :avatar, AvatarUploader, mount_on: :avatar_file_name
  has_attached_file :avatar, :styles => { :medium => ["300x300>"], :thumb => ["100x100>"], :page => ["800"] }
  belongs_to :user
end
