class CreateRentedCars < ActiveRecord::Migration[5.2]
  def change
    create_table :rented_cars do |t|
      t.string :price_per_day
      t.string :model
      t.string :serie
      t.string :location

      t.timestamps
    end
  end
end
