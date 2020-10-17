class AddSenderToChats < ActiveRecord::Migration[5.2]
  def change
    add_column :chats, :recipient_id, :integer
    add_column :chats, :sender_id, :integer
    add_index :chats, :recipient_id
    add_index :chats, :sender_id
    add_index :chats, [:recipient_id, :sender_id], unique: true
   end
end
