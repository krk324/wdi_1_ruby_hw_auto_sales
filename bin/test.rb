require_relative '../lib/car.rb'

car1 = Car.new(make: 'Toyota', model: 'Lexus', year: 2010, msrp: 50000, markup: 0.3)


puts car1.inspect
puts car1.price
