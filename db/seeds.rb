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

events_attributes = [
  {
    title: 'Presentation of event and teams',
    event_date: '2020-01-01'.to_date
  },
  {
    title: 'First Game',
    teams: 'Brazil || Argentina',
    event_date: '2020-01-02'.to_date
  },
  {
    title: 'First Game',
    teams: 'Paraguai || Mexico',
    event_date: '2020-01-02'.to_date
  },
  {
    title: 'Final Game',
    teams: 'Brazil || USA',
    event_date: '2020-06-01'.to_date
  }
]

EventCategory.all.each do |event_category|
  events_attributes.each do |event_attribute|
    event_attribute[:event_category] = event_category
    Event.create!(event_attribute)
  end
end