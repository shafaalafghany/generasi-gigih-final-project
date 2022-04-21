class Order < ApplicationRecord
  validates :order_invoice,
  :order_total_price,
  :order_date,
  :customer_id,
  :user_id, presence: true
end
