class RemoveNameFromAdposts < ActiveRecord::Migration[5.2]
  def change
    remove_column :adposts, :name, :string
    remove_column :adposts, :description, :text
  end
end
