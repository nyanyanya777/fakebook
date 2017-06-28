n = 2
10.times do |n|
  content = Faker::LordOfTheRings.character
  user_id = 86
  Topic.create(
  content: content,
  user_id: user_id,
  )
end

20.times do
  user_id = 86
  topic_id = [*123..133].sample
  content = "眠い"
  Comment.create!(
    user_id: user_id,
    topic_id: topic_id,
    content: content
  )
end
