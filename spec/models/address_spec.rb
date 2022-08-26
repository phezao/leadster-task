require 'rails_helper'

RSpec.describe Address, type: :model do
  it "is valid with street, street number, city, state, zipcode, neighborhood and contact" do
    address = create(:address)

    expect(address).to be_valid
  end

  it "is invalid without street" do
    address = build(:address, street: nil)

    expect(address).to be_invalid
  end

  it "is invalid without city" do
    address = build(:address, city: nil)

    expect(address).to be_invalid
  end

  it "is invalid without state" do
    address = build(:address, state: nil)

    expect(address).to be_invalid
  end

  it "is invalid without zipcode" do
    address = build(:address, zipcode: nil)

    expect(address).to be_invalid
  end

  it "is invalid without neighborhood" do
    address = build(:address, neighborhood: nil)

    expect(address).to be_invalid
  end

  it "is invalid without contact" do
    address = build(:address, contact: nil)

    expect(address).to be_invalid
  end

  it 'is invalid with a state not from the Address::STATE list' do
    address = build(:address, state: 'Test')

    expect(address).to be_invalid
  end
end
