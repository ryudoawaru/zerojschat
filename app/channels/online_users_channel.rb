class OnlineUsersChannel < ApplicationCable::Channel
  def subscribed
    stream_from "online_users"
    current_user.update(online: true)
    broadcast_online_users
  end

  def unsubscribed
    current_user.update(online: false)
    broadcast_online_users
  end

  private

  def broadcast_online_users
    Turbo::StreamsChannel.broadcast_replace_to(
      'online_users',
      target: 'online-status',
      partial: 'layouts/shared/sidebar'
    )
  end
end
