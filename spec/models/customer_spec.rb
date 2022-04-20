require 'rails_helper'

RSpec.describe Customer, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:customer)).to be_valid
  end

  it 'is valid with name, email, phone and address' do
    expect(FactoryBot.build(:customer)).to be_valid
  end
end
