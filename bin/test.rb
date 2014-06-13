require_relative '../lib/car.rb'

cars = [
  car1 = Car.new('Toyota','Lexus',2010,50000,0.3),
  car2 = Car.new('Honda','Civic',2012,20000,0.3),
  car3 = Car.new('Honda2','Lexus',2010,30000,0.3),
  car4 = Car.new('Toyota','Camery',2009,20000,0.3),
  car5 = Car.new('Ford','Sportscar',2013,10000,0.3)
]

puts cars.inspect
puts cars[0].value
puts cars[0].markup_price
