class FixColumnName < ActiveRecord::Migration[5.2]
  def change
    rename_column :adposts, :avatar, :avatar_file_name
  end
end
