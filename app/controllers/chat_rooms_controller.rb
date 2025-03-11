class ChatRoomsController < ApplicationController
  def index
    redirect_to chat_room_path(ChatRoom.first)
  end

  def show
    @chat_room = ChatRoom.find(params[:id])
    @messages = @chat_room.messages.preload(:user).last(20)
  end
end
