class AddNameToChatroom < ActiveRecord::Migration[6.0]
  def change
    add_column :chat_rooms, :name, :string
  end
end
