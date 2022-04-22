require 'rails_helper'

RSpec.describe OrderDetail, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:order_detail)).to be_valid
  end

  it 'is valid with menu_name, menu_price, menu_quantity, order_id, menu_id' do
    expect(FactoryBot.build(:order_detail)).to be_valid
  end
end
