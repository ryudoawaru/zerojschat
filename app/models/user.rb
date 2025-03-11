# == Schema Information
#
# Table name: users
#
#  id              :integer          not null, primary key
#  email_address   :string           not null
#  online          :boolean          default(FALSE)
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
class User < ApplicationRecord
  has_secure_password
  has_many :sessions, dependent: :destroy
  has_many :messages, dependent: :destroy

  scope :online, -> { where(online: true) }
  scope :offline, -> { where(online: false) }

  normalizes :email_address, with: ->(e) { e.strip.downcase }
end
