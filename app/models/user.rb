class User < ApplicationRecord
  validates :user_username, presence: true
  validates :user_password, presence: true
end
