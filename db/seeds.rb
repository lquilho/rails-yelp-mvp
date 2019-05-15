puts 'Creating restaurants...'
restaurants_attributes = [
  {
    name:         'AlBerto',
    address:      'Rua Hercules, Lisboa 10E',
    phone_number: '217 999 888',
    category:     'french'
  },
  {
    name:         'Mr Wong',
    address:      'Rua do Chinês, Lisboa 11E',
    phone_number: '217 999 000',
    category:     'chinese'
  },
  {
    name:         'Hiroku',
    address:      'Rua samurai, Lisboa 99',
    phone_number: '214 999 888',
    category:     'japanese'
  },
  {
    name:         'who eats belgian food?',
    address:      'Rua do pior restaurante de , Lisboa 1E',
    phone_number: '217 000 888',
    category:     'belgian'
  },
  {
    name:         'Il Capo di tutti Capi',
    address:      'Rua Mafia, Lisboa 1',
    phone_number: '217 000 999',
    category:     'italian'
  },
]
Restaurant.create!(restaurants_attributes)
puts 'Finished!'
