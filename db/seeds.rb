users = [
  {email: 'rodrigo@rtoledo.inf.br', password: 'abcd1234'},
  {email: 'goku@dragonball.dreams', password: 'abcd1234'}
]

users.map do |user|
  User.create!(email: user[:email], password: user[:password], password_confirmation: user[:password])
end