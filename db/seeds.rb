 100.times do
   conversation_id = [*1..60].sample
   user_id = [*1..20].sample
   body = "猫飼いたい"
   read = "図鑑が欲しい"
   Message.create!(
     conversation_id: conversation_id,
     user_id: user_id,
     body: body,
     read: read
   )
 end
