n = 1
100.times do |n|
  content = Faker::LordOfTheRings.character
  user_id = 1
  Topic.create(
  content: content,
  user_id: user_id,
  )
end

100.times do |n|
  follower_id = [*1..101].sample
  followed_id = [*1..101].sample
  while follower_id == followed_id
    followed_id = [*1..100].sample
  end
    Relationship.find_or_create_by(
    follower_id: follower_id,
    followed_id: followed_id
  )
end
