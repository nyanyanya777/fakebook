
n = 1

20.times do |n|
user_id =3
content = "天気明朗なれど波高し"
Topic.create!(
user_id: user_id,
content: content,
)

end
