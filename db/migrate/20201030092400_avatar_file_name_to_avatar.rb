class AvatarFileNameToAvatar < ActiveRecord::Migration[5.2]
  def change
    rename_column :adposts, :avatar_file_name, :avatar
    rename_column :rented_cars, :avatar_file_name, :avatar
  end
end
