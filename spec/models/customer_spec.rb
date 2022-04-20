require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:customer)).to be_valid
  end

  it 'is valid with name, email, phone and address' do
    expect(FactoryBot.build(:customer)).to be_valid
  end

  it 'is invalid without a name' do
    customer = FactoryBot.build(:customer, customer_name: nil)

    customer.valid?

    expect(customer.errors[:customer_name]).to include("can't be blank")
  end

  it 'is invalid without an email' do
    customer = FactoryBot.build(:customer, customer_email: nil)

    customer.valid?

    expect(customer.errors[:customer_email]).to include("can't be blank")
  end
end
