class OrderDetail < ApplicationRecord
  validates :menu_name, :menu_price, :menu_quantity, presence: true
end
