class CreateRentedLeases < ActiveRecord::Migration[5.2]
  def change
    create_table :rented_leases do |t|
      t.references :user, foreign_key: true
      t.references :rented_car, foreign_key: true

      t.timestamps
    end
  end
end
