
n = 1

20.times do |n|
user.id =3
content = "天気明朗なれど波高し"
Topic.create!(
content: content,
user_id: user_id,
)

end
