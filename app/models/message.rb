class Message < ApplicationRecord
  belongs_to :chat_room
  belongs_to :users
  validates :content, prensence: true, allow_blank: false

  def from?(some_user)
    user == some_user
  end

  def broadcast_message

  end
end
