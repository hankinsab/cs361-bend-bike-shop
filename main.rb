!# /usr/bin/env ruby
#Price should now be the base price of the bike,
#plus $2 times its weight, plus $2 times the weight of any luggage.

require_relative 'bike'
require_relative 'rental'
require_relative 'luggage'

items = [:apple, :water, :protein_bar]
luggage = Luggage.new(Luggage::DEFAULT_MAX_CAPACITY, items)

bike = Bike.new(1, :pink, 99.99, items, luggage)

rental = Rental.new(bike)

puts "Total Price: #{rental.total_price}, Total Weight: #{rental.weight}"

