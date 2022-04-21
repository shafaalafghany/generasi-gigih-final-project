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
end
