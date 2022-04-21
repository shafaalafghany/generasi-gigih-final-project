class Order < ApplicationRecord
  validates :order_invoice, :order_total_price, presence: true
end
