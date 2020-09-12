class AddImageToRentedcars < ActiveRecord::Migration[5.2]
  def up
    add_attachment :rented_cars, :rented_car_image
  end

  def down
    remove_attachment :rented_cars, :rented_car_image
  end
  
end
