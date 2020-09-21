class RentedLease < ApplicationRecord
  belongs_to :user
  belongs_to :rented_car
end
