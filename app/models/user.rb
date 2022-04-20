class User < ApplicationRecord
  validates :user_username, presence: true
end
