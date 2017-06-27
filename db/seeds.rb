50.times do
  follower_id = [*1..20].sample
  followed_id = [*1..20].sample
  while follower_id == followed_id
    followed_id = [*1..20].sample
  end
    Relationship.find_or_create_by(
    follower_id: follower_id,
    followed_id: followed_id
  )
