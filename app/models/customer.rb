class Customer < ApplicationRecord
  has_many :orders

  validates :customer_name, :customer_email, :customer_phone, :customer_address, presence: true
  validates :customer_email, uniqueness: true

  validates_format_of :customer_email, with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end
