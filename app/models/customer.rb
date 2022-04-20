class Customer < ApplicationRecord
  validates :customer_name, presence: true
  validates :customer_email, presence: true
end
