class Customer < ApplicationRecord
  validates :customer_name, :customer_email, presence: true
  validates :customer_email, uniqueness: true
end
