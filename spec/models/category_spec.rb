require 'rails_helper'

RSpec.describe Category, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:category)).to be_valid
  end

  it 'is valid with a name' do
    expect(FactoryBot.build(:category)).to be_valid
  end

  it 'is invalid without a name' do
    category = FactoryBot.build(:category, category_name: nil)

    category.valid?

    expect(category.errors[:category_name]).to include("can't be blank")
  end

  it 'is invalid with a duplicate name' do
    category1 = FactoryBot.create(:category, category_name: 'Rice')
    category2 = FactoryBot.build(:category, category_name: 'Rice')

    category2.valid?

    expect(category2.errors[:category_name]).to include("has already been taken")
  end
end
