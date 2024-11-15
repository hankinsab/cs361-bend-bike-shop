!# /usr/bin/env ruby

require_relative 'bike'

bike = Bike.new(1, :pink, 99.99)

apples = Cargo.new(:apples)
water = Cargo.new(:water)
repair_kit = Cargo.new(:repair_kit)

bike.pannier.add_cargo(apples)
bike.pannier.add_cargo(water)
bike.pannier.add_cargo(repair_kit)

puts "Space for #{bike.pannier.pannier_remaining_capacity} items left."

bike.rent!
