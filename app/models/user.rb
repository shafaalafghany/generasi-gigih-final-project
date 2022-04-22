class User < ApplicationRecord
  has_many :orders
  validates :user_username, presence: true, uniqueness: true
  validates :user_password, presence: true
end
