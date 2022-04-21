class Customer < ApplicationRecord
  validates :customer_name, :customer_email, presence: true
  validates :customer_email, uniqueness: true

  validates_format_of :customer_email, with: /\A([\w+\-].?)+@[a-z\d\-]+(\.[a-z]+)*\.[a-z]+\z/i
end
