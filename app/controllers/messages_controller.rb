class MessagesController < ApplicationController
  def create
    @chat_room = ChatRoom.find(params[:chat_room_id])
    @message = Message.new(message_params)
    @message.user = current_user
    if @message.save
      # respond_to do |format|
      redirect_to chat_room_path(@chat_room, anchor: "message-#{message.id}")
    else
      render "chat_rooms/show"
    end
  end

  private

  def message_params
    params.require(:message).permit(:content)
end
