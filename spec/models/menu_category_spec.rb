require 'rails_helper'

RSpec.describe MenuCategory, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:menu_category)).to be_valid
  end

  it 'is valid with menu_id and category_id' do
    expect(FactoryBot.build(:menu_category)).to be_valid
  end

  it 'is invalid without menu_id' do
    menu_category = FactoryBot.build(:menu_category, menu_id: nil)

    menu_category.valid?

    expect(menu_category.errors[:menu_id]).to include("can't be blank")
  end
end
