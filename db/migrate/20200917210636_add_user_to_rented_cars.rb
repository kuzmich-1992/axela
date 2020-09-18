class AddUserToRentedCars < ActiveRecord::Migration[5.2]
  def change
    add_reference :rented_cars, :user, foreign_key: true
  end
end
