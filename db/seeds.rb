# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rake db:seed (or created alongside the db with db:setup).
#
# Examples:
#
#   cities = City.create([{ name: 'Chicago' }, { name: 'Copenhagen' }])
#   Mayor.create(name: 'Emanuel', city: cities.first)
20.times do
  email = Faker::Internet.email
  name = Faker::Name.name
  password = "password"
  num = format('%03d', [*001..141].sample)
  remote_avatar_url = "http://towncat.yokochou.com/images/#{num}.jpg"
  user = User.new(
          email: email,
          name: name,
          password: password,
          password_confirmation: password,
          uid: SecureRandom.uuid,
          remote_avatar_url: remote_avatar_url
        )
  user.skip_confirmation!
  user.save
end
