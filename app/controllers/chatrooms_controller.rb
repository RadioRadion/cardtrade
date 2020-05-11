class ChatroomsController < ApplicationController
  def show
    @chatroom = Chatroom.includes(messages: :user).find(params[:id])
  end

  def create
    Chatroom.new
  end


  def chatroom_params
    params.require(:chatroom).permit(:name)
  end
end
