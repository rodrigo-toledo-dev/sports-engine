users = [
  {email: 'rodrigo@rtoledo.inf.br', password: 'abcd1234'},
  {email: 'goku@dragonball.dreams', password: 'abcd1234'}
]

users.map do |user|
  User.create!(email: user[:email], password: user[:password], password_confirmation: user[:password])
end

[
  'Presentation of event',
  'champions league of Football',
  'champions league of Basketball',
  'champions league of Tenis',
  'champions league of Golf',
].map do |event_category_name|
  EventCategory.create!(name: event_category_name)
end
