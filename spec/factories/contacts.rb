FactoryBot.define do
  factory :contact do
    fullname { Faker::Name.name }
    email { Faker::Internet.email }
    tax_id { Faker::Number.number(digits: 11) }
    birthdate { Faker::Date.birthday(min_age: 18, max_age: 65) }
  end
end
