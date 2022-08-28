FactoryBot.define do
  factory :address do
    zipcode { Faker::Address.zip_code }
    street { Faker::Address.street_name }
    city { Faker::Address.city }
    state { Address::STATES.values.sample }
    neighborhood { "MyString" }
    street_number { Faker::Address.building_number }
    contact
  end
end
