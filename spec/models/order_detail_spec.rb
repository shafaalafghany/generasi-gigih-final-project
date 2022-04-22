require 'rails_helper'

RSpec.describe OrderDetail, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:order_detail)).to be_valid
  end

  it 'is valid with menu_name, menu_price, menu_quantity, order_id, menu_id' do
    expect(FactoryBot.build(:order_detail)).to be_valid
  end

  it 'is invalid without menu_name' do
    order_detail = FactoryBot.build(:order_detail, menu_name: nil)

    order_detail.valid?

    expect(order_detail.errors[:menu_name]).to include("can't be blank")
  end

  it 'is invalid without menu_price' do
    order_detail = FactoryBot.build(:order_detail, menu_price: nil)

    order_detail.valid?

    expect(order_detail.errors[:menu_price]).to include("can't be blank")
  end

  it 'is invalid without menu_quantity' do
    order_detail = FactoryBot.build(:order_detail, menu_quantity: nil)

    order_detail.valid?

    expect(order_detail.errors[:menu_quantity]).to include("can't be blank")
  end

  it 'is invalid without order_id' do
    order_detail = FactoryBot.build(:order_detail, order_id: nil)

    order_detail.valid?

    expect(order_detail.errors[:order_id]).to include("can't be blank")
  end
end
