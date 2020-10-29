class ColumnAvatarRentedCars < ActiveRecord::Migration[5.2]
  def change
    rename_column :rented_cars, :avatar, :avatar_file_name
  end
end
