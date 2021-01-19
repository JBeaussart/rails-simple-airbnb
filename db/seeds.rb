puts "Cleaning database..."
Flat.destroy_all

puts "Creating flat..."

london = { name: 'Light Garden Flat London', address: '10 Clifton Gardens London W9 1DT', description: 'A lovely summer feel for this spacious garden flat. Two double bedrooms, open plan living area, large kitchen and a beautiful conservatory', price_per_night: 75, number_of_guests: 3}
paris = { name: 'Paris flat family', address: '20 avenue de clichy', description: 'Elegant and crazy view on the effel tour', price_per_night: 98, number_of_guests: 8}
berlin = { name: 'Crazy house berlin', address: '43 route de la saucisse', description: 'deutch kalitat house', price_per_night: 63, number_of_guests: 9}

[london, paris, berlin].each do |attributes|
  flat = Flat.create!(attributes)
  puts "Created #{flat.name}"
end
puts "Finished!"