class Order < ApplicationRecord
  validates :order_invoice, presence: true
end
