class OrderDetail < ApplicationRecord
  validates :menu_name, :menu_price, :menu_quantity, :order_id, :menu_id, presence: true
end
