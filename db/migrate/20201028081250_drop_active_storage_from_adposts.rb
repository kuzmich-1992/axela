class DropActiveStorageFromAdposts < ActiveRecord::Migration[5.2]
  change_table :adposts do |t|
    t.remove :adpost_image_file_name
    t.remove :adpost_image_content_type
    t.remove :adpost_image_file_size
    t.remove :adpost_image_updated_at
  end
end

