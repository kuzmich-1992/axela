class RentedCar < ApplicationRecord
  mount_uploader :avatar, AvatarUploader
  has_many :rented_leases, dependent: :destroy
  has_many :users, through: :rented_leases
end

 