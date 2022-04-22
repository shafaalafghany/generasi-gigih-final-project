require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:order)).to be_valid
  end

  it 'is valid with invoice, total_price, date, status' do
    expect(FactoryBot.build(:order)).to be_valid
  end

  it 'is invalid without invoice' do
    order = FactoryBot.build(:order, order_invoice: nil)

    order.valid?

    expect(order.errors[:order_invoice]).to include("can't be blank")
  end

  it 'is invalid without total_price' do
    order = FactoryBot.build(:order, order_total_price: nil)

    order.valid?

    expect(order.errors[:order_total_price]).to include("can't be blank")
  end

  it 'is invalid without date' do
    order = FactoryBot.build(:order, order_date: nil)

    order.valid?

    expect(order.errors[:order_date]).to include("can't be blank")
  end

  it 'is invalid without customer_id' do
    order = FactoryBot.build(:order, customer_id: nil)

    order.valid?

    expect(order.errors[:customer_id]).to include("can't be blank")
  end

  it 'is invalid without user_id' do
    order = FactoryBot.build(:order, user_id: nil)

    order.valid?

    expect(order.errors[:user_id]).to include("can't be blank")
  end

  it 'is valid when NEW for status value' do
    order = FactoryBot.build(:order, user_id: "NEW")

    order.valid?

    expect(order).to be_valid
  end
end
