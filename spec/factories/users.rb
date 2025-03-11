# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email_address   :string           not null
#  password_digest :string           not null
#  username        :string           not null
#  created_at      :datetime         not null
#  updated_at      :datetime         not null
#
# Indexes
#
#  index_users_on_email_address  (email_address) UNIQUE
#  index_users_on_username       (username) UNIQUE
#
FactoryBot.define do
  factory :user do
    email_address { Faker::Internet.unique.email }
    username { Faker::Internet.unique.username }
    password { '1qaz2wsx' }
  end
end
