class OrderDetail < ApplicationRecord
  validates :menu_name, presence: true
end
