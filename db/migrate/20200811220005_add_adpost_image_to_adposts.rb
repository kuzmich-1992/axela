class AddAdpostImageToAdposts < ActiveRecord::Migration[5.2]
  def up
    add_attachment :adposts, :adpost_image
  end

  def down
    remove_attachment :adposts, :adpost_image
  end
end
