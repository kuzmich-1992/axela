class AddNewColumnsToAdposts < ActiveRecord::Migration[5.2]
  def change
    add_column :adposts, :price, :integer
    add_column :adposts, :year, :integer
    add_column :adposts, :model, :string
    add_column :adposts, :serie, :string
    add_column :adposts, :body, :string
    add_column :adposts, :gearbox, :string
    add_column :adposts, :engine_type, :string
    add_column :adposts, :location, :string
  end
end
