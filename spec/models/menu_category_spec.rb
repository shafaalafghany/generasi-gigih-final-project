require 'rails_helper'

RSpec.describe MenuCategory, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:menu_category)).to be_valid
  end
end
