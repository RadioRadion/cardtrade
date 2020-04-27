class ChangeOldChatRoomsNameToNewChatroomsName < ActiveRecord::Migration[6.0]
  def change
    rename_table :chat_rooms, :chatrooms
  end
end
