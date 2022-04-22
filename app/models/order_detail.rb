class OrderDetail < ApplicationRecord
  validates :menu_name, :menu_price, :menu_quantity, :order_id, presence: true
end
