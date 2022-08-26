require 'rails_helper'

RSpec.describe Contact, type: :model do
  it "is valid with fullname, birthdate, email and tax_id" do
    contact = create(:contact)

    expect(contact).to be_valid
  end

  it "is invalid without fullname" do
    contact = build(:contact, fullname: nil)

    expect(contact).to be_invalid
  end

  it "is invalid without email" do
    contact = build(:contact, email: nil)

    expect(contact).to be_invalid
  end

  it "is invalid without tax_id" do
    contact = build(:contact, tax_id: nil)

    expect(contact).to be_invalid
  end
  it "is invalid without unique tax_id" do
    create(:contact, tax_id: '12345678901')
    contact = build(:contact, tax_id: '12345678901')

    expect(contact).to be_invalid
  end

  it "is invalid without birthdate" do
    contact = build(:contact, birthdate: nil)

    expect(contact).to be_invalid
  end
end
