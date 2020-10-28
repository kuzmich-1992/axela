class AddAvatarToRentedCars < ActiveRecord::Migration[5.2]
  def change
    add_column :rented_cars, :avatar, :string
  end
end
