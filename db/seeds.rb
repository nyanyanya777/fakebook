n = 1
20.times do |n|
  user_id = [*1..100].sample
  topic_id = [*1..100].sample
  content = "眠い"
  Comment.create!(
    user_id: user_id,
    topic_id: topic_id,
    content: content
  )
end
