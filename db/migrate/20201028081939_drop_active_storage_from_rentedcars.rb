class DropActiveStorageFromRentedcars < ActiveRecord::Migration[5.2]
  change_table :rented_cars do |t|
    t.remove :rented_car_image_file_name
    t.remove :rented_car_image_content_type
    t.remove :rented_car_image_file_size
    t.remove :rented_car_image_updated_at
  end
end
