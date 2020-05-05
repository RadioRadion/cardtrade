class RenameChatroomTable < ActiveRecord::Migration[6.0]
  def change
    rename_table :chatrooms, :chat_rooms
  end
end
