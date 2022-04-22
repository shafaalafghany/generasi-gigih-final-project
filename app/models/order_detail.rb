class OrderDetail < ApplicationRecord
  belongs_to :order
  belongs_to :menu

  validates :menu_name, :menu_price, :menu_quantity, :order_id, :menu_id,
  presence: true
end