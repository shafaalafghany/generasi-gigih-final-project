class MenuCategory < ApplicationRecord
  belongs_to :menu

  validates :menu_id, :category_id, presence: true
end
