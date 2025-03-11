class ApplicationController < ActionController::Base
  include Authentication
  # Only allow modern browsers supporting webp images, web push, badges, import maps, CSS nesting, and CSS :has.
  allow_browser versions: :modern
  helper_method :chat_rooms, :current_user, :current_chat_room

  private

  def current_user
    Current.session&.user
  end

  def current_chat_room
    @chat_room || ChatRoom.first
  end

  def chat_rooms
    @chat_rooms ||= ChatRoom.all
  end
end
