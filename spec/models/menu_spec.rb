require 'rails_helper'

RSpec.describe Menu, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:menu)).to be_valid
  end

  it 'is valid with name, price and description' do
    expect(FactoryBot.build(:menu)).to be_valid
  end
end
