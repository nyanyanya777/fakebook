n = 1
20.times do |n|
email = Faker::Internet.email
name = Faker::LordOfTheRings.character
password = Faker::Internet.password
uid = SecureRandom.uuid
User.create(
email: email,
name: name,
password: password,
password_confirmation: password,
uid: uid,
)
end
