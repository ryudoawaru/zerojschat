# == Schema Information
#
# Table name: messages
#
#  id           :integer          not null, primary key
#  content      :text
#  created_at   :datetime         not null
#  updated_at   :datetime         not null
#  chat_room_id :integer
#  user_id      :integer
#
# Indexes
#
#  index_messages_on_chat_room_id  (chat_room_id)
#  index_messages_on_user_id       (user_id)
#
class Message < ApplicationRecord
  belongs_to :user
  belongs_to :chat_room


  after_create_commit -> {broadcast_append_to [chat_room, :messages], target: 'messages'}
end
