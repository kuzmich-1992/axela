class RentedCar < ApplicationRecord
  # has_many :rent_leases
  # has_many :users, through: :rent_leases
  belongs_to :user

  has_attached_file :rented_car_image, styles: { medium: "300x300", thumb: "100x100" }
  validates_attachment_content_type :rented_car_image, content_type: /\Aimage\/.*\Z/
end
