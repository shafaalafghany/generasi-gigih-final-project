require 'rails_helper'

RSpec.describe User, type: :model do
  it 'has a valid factory' do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it 'is valid with a username and a password' do
    expect(FactoryBot.build(:user)).to be_valid
  end

  it 'is invalid without a username' do
    user = FactoryBot.build(:user, user_username: nil)

    user.valid?

    expect(user.errors[:user_username]).to include("can't be blank")
  end

  it 'is invalid without a password' do
    user = FactoryBot.build(:user, user_password: nil)

    user.valid?

    expect(user.errors[:user_password]).to include("can't be blank")
  end

  it 'is invalid with a duplicate username' do
    user1 = FactoryBot.create(:user, user_username: 'SomeUsername')
    user2 = FactoryBot.build(:user, user_username: 'SomeUsername')

    user2.valid?

    expect(user2.errors[:user_username]).to include("has already been taken")
  end
end
