class ChatRoomsController < ApplicationController
  def show
    @chat_room = ChatRoom.includes(message: :user).find(params[:id])
  end
end
