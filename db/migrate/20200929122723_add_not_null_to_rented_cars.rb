class AddNotNullToRentedCars < ActiveRecord::Migration[5.2]
  def up
    change_column_null :rented_cars, :rented_car_image_file_name, false
  end
end
