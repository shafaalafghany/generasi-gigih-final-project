class Menu < ApplicationRecord
  validates :menu_name, :menu_price, presence: true
  validates :menu_name, uniqueness: true
  validates :menu_description, length: { maximum: 150 }
end
