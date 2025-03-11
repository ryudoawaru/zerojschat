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
FactoryBot.define do
  factory :chat_room do
    name { Faker::Coffee.blend_name }
    brief { Faker::Coffee.notes }
  end
end
