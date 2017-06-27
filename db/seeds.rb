# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
n = 1

while n <= 20
name = Faker::Pokemon.name
email = Faker::Internet.email
password = Faker::Internet.password
uid = SecureRandom.uuid

User.create(
id: n,
name: name,
email: email,
password: password,
uid: uid
)
n = n + 1
end
