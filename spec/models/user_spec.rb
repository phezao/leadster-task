require 'rails_helper'

RSpec.describe User, type: :model do
  it 'is valid with email and password' do
    user = create(:user)

    expect(user).to be_valid
  end

  it 'is invalid without email' do
    user = build(:user, email: nil)

    expect(user).to be_invalid
  end

  it 'is invalid without unique email' do
    create(:user, email: "philip@mail.com")
    user_with_same_email = build(:user, email: "philip@mail.com")

    expect(user_with_same_email).to be_invalid
  end

  it 'is invalid without password' do
    user = build(:user, password: nil)

    expect(user).to be_invalid
  end
end
