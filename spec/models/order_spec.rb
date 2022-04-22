require 'rails_helper'

RSpec.describe Order, type: :model do
  it 'has a valid factory' do
    user = FactoryBot.create(:user)
    customer = FactoryBot.create(:customer)
    order = FactoryBot.build(:order, user_id: user.id, customer_id: customer.id)

    expect(order).to be_valid
  end

  it 'is valid with invoice, total_price, date, status' do
    user = FactoryBot.create(:user)
    customer = FactoryBot.create(:customer)
    order = FactoryBot.build(:order, user_id: user.id, customer_id: customer.id)
    
    expect(order).to be_valid
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
    user = FactoryBot.create(:user)
    customer = FactoryBot.create(:customer)
    order = FactoryBot.build(
      :order,
      order_status: "NEW",
      user_id: user.id,
      customer_id: customer.id
    )

    order.valid?

    expect(order).to be_valid
  end

  it 'is valid when PAID for status value' do
    user = FactoryBot.create(:user)
    customer = FactoryBot.create(:customer)
    order = FactoryBot.build(
      :order,
      order_status: "PAID",
      user_id: user.id,
      customer_id: customer.id
    )

    order.valid?

    expect(order).to be_valid
  end

  it 'is valid when CANCELED for status value' do
    order = FactoryBot.build(:order, user_id: "CANCELED")

    order.valid?

    expect(order).to be_valid
  end
end
