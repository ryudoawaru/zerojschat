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
require 'rails_helper'

RSpec.describe Message, type: :model do
  pending "add some examples to (or delete) #{__FILE__}"
end
