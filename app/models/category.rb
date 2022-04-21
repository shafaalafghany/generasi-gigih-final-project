class Category < ApplicationRecord
  has_many :menu_categories
  has_many :menus, through: :menu_categories
  validates :category_name, presence: true
  validates :category_name, uniqueness: true
end
