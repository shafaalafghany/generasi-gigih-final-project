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

  it 'is invalid with a duplicate name' do
    menu1 = FactoryBot.create(:menu, menu_name: 'Nasi Goreng')
    menu2 = FactoryBot.build(:menu, menu_name: 'Nasi Goreng')

    menu2.valid?

    expect(menu2.errors[:menu_name]).to include("has already been taken")
  end

  it 'is invalid with a description more than 150 characters' do
    menu = FactoryBot.build(:menu, menu_description: Faker::Alphanumeric.alpha(number: 151))

    menu.valid?

    expect(menu.errors[:menu_description]).to include("is too long (maximum is 150 characters)")
  end

  it 'is invalid when price with non numeric values' do
    menu = FactoryBot.build(:menu, menu_price: 'price')

    menu.valid?

    expect(menu.errors[:menu_price]).to include("is not a number")
  end

  it 'is invalid when price less than 0.01' do
    menu = FactoryBot.build(:menu, menu_price: 0.001)

    menu.valid?

    expect(menu.errors[:menu_price]).to include("must be greater than 0.01")
  end

  describe 'self#by_letter' do
    it 'should return a sorted array of result that match' do
      menu1 = FactoryBot.create(:menu, menu_name: 'Nasi Goreng')
      menu2 = FactoryBot.create(:menu, menu_name: 'Kerak Telor')
      menu3 = FactoryBot.create(:menu, menu_name: 'Nasi Kuning')

      expect(Menu.by_letter("N")).to eq([menu1, menu3])
    end
  end
end
