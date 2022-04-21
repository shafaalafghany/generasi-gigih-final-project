class MenuCategory < ApplicationRecord
  belongs_to :menu
  belongs_to :category

  validates :menu_id, :category_id, presence: true
end
