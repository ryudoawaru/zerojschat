class MessagesController < ApplicationController
  before_action :set_chat_room

  def create
    @message = @chat_room.messages.create(user: Current.session.user, content: message_param[:content])
    respond_to do |format|
      format.turbo_stream
    end
  end

  private

  def message_param
    params.expect(message: [:content])
  end

  def set_chat_room
    @chat_room = ChatRoom.find(params[:chat_room_id])
  end
end
