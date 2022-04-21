class MenuCategory < ApplicationRecord
  validates :menu_id, :category_id, presence: true
end
