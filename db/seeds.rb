
n = 1

60.times do
  user_id = [*1..20].sample
  topic_id = [*1..20].sample
  content = Yoshida::Text.sentence
  Comment.create!(
    user_id: user_id,
    topic_id: topic_id,
    content: content
  )
end

end
