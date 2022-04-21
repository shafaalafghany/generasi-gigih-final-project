class Menu < ApplicationRecord
  validates :menu_name, :menu_price, presence: true
end
