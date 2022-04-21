require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:menu)).to be_valid
  end

  it 'is valid with name, price and description' do
    expect(FactoryBot.build(:menu)).to be_valid
  end

  it 'is invalid without a name' do
    menu = FactoryBot.build(:menu, menu_name: nil)

    menu.valid?

    expect(menu.errors[:menu_name]).to include("can't be blank")
  end

  it 'is invalid without a price' do
    menu = FactoryBot.build(:menu, menu_price: nil)

    menu.valid?

    expect(menu.errors[:menu_price]).to include("can't be blank")
  end
end
