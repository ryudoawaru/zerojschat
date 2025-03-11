# == Schema Information
#
# Table name: chat_rooms
#
#  id         :integer          not null, primary key
#  brief      :text
#  name       :string
#  created_at :datetime         not null
#  updated_at :datetime         not null
#
class ChatRoom < ApplicationRecord
  has_many :messages, dependent: :destroy
end
