require 'rails_helper'

RSpec.describe MenuCategory, type: :model do
  it 'has a valid factory' do
    menu = FactoryBot.create(:menu)
    category = FactoryBot.create(:category)
    menu_category = FactoryBot.build(:menu_category, menu_id: menu.id, category_id: category.id)

    expect(menu_category).to be_valid
  end

  it 'is valid with menu_id and category_id' do
    menu = FactoryBot.create(:menu)
    category = FactoryBot.create(:category)
    menu_category = FactoryBot.build(:menu_category, menu_id: menu.id, category_id: category.id)

    expect(menu_category).to be_valid
  end

  it 'is invalid without menu_id' do
    menu_category = FactoryBot.build(:menu_category, menu_id: nil)

    menu_category.valid?

    expect(menu_category.errors[:menu_id]).to include("can't be blank")
  end

  it 'is invalid without category_id' do
    menu_category = FactoryBot.build(:menu_category, category_id: nil)
    
    menu_category.valid?

    expect(menu_category.errors[:category_id]).to include("can't be blank")
  end

  it 'has invalid menu_id' do
    category = FactoryBot.create(:category)
    menu_category = FactoryBot.build(:menu_category, menu_id: 2, category_id: category.id)

    menu_category.valid?

    expect(menu_category).to be_invalid
  end

  it 'has invalid category_id' do
    menu = FactoryBot.create(:menu)
    menu_category = FactoryBot.build(:menu_category, menu_id: menu.id, category_id: 2)

    menu_category.valid?

    expect(menu_category).to be_invalid
  end
end
