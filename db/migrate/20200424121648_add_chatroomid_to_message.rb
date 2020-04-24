class AddChatroomidToMessage < ActiveRecord::Migration[6.0]
  def change
    add_reference :messages, :chat_rooms, foreign_key: true
  end
end
