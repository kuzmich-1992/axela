class AddAvatarToAdposts < ActiveRecord::Migration[5.2]
  def change
    add_column :adposts, :avatar, :string
  end
end
