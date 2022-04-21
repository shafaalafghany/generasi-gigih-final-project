class Category < ApplicationRecord
  validates :category_name, presence: true
  validates :category_name, uniqueness: true
end
