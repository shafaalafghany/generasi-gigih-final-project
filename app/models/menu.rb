class Menu < ApplicationRecord
  has_many :menu_categories
  has_many :categories, through: :menu_categories
  has_many :order_details

  validates :menu_name, :menu_price, presence: true
  validates :menu_name, uniqueness: true
  validates :menu_description, length: { maximum: 150 }
  validates :menu_price, numericality: { greater_than: 0.01 }

  def self.by_letter(letter)
    where("menu_name LIKE ?", "#{letter}%").order(:menu_name)
  end
end
