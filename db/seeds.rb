# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the bin/rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)
User.destroy_all

user = User.create!(email: 'user@leadster.com', password: '123456')
50.times do
  contact = Contact.create!(
    user: user,
    tax_id: Faker::Number.number(digits: 11),
    email: Faker::Internet.email,
    fullname: Faker::Name.name,
    birthdate: Faker::Date.birthday(min_age: 18, max_age: 65)
  )
  Address.create!(
    contact: contact,
    street: Faker::Address.street_name,
    zipcode: Faker::Address.zip_code,
    city: Faker::Address.city,
    state: Address::STATES.values.sample,
    neighborhood: "MyString",
    street_number: Faker::Address.building_number
  )
end
