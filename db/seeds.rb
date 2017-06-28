20.times do
  user_id = [*1..100].sample
  topic_id = [*123..133].sample
  content = "眠い"
  Comment.create!(
    user_id: user_id,
    topic_id: topic_id,
    content: content
  )
end

n = 1
10.times do |n|
  content = Faker::LordOfTheRings.character
  user_id = 102
  Topic.create(
  content: content,
  user_id: user_id,
  )
end
