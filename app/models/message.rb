class Message < ApplicationRecord
  belongs_to :chatroom
  belongs_to :users

  def from?(some_user)
    user == some_user
  end

  def broadcast_message

  end
end
