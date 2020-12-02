# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

institutions = []

5.times do
  institutions << 
    Institution.create(
      name: Faker::University.unique.name,
      address: Faker::Address.unique.full_address,
      phone: Faker::PhoneNumber.unique.phone_number
    )
end

20.times do
  Student.create(
    full_name: Faker::Name.unique.name,
    address: Faker::Address.unique.full_address,
    email: Faker::Internet.unique.email,
    mobile: Faker::PhoneNumber.unique.phone_number,
    institution_id: institutions.shuffle.first.id
  )
end

User.create(
  first_name: Faker::Name.unique.name,
  last_name: Faker::Name.unique.name,
  username: 'narmatha',
  password: 'naru@foradian',
  type:'Admin'
  )

User.create(
  first_name: Faker::Name.unique.name,
  last_name: Faker::Name.unique.name,
  username: 'shaashu',
  password: 'shaashu@foradian',
  type:'Agent'
  )

Country.create(
  country_name: 'India'
   )