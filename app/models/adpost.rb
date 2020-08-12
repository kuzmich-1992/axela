class Adpost < ApplicationRecord
  belongs_to :user

  has_attached_file :adpost_image, styles: { medium: "300x300", thumb: "100x100" }
  validates_attachment_content_type :adpost_image, content_type: /\Aimage\/.*\Z/
end
