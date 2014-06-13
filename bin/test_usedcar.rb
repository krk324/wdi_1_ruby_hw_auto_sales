require_relative '../lib/usedcar.rb'

cars = [
  car1 = UsedCar.new('Toyota','Lexus',2010,50000,0.3,9999999),
  car2 = UsedCar.new('Honda','Civic',2012,20000,0.3,5000000),
  car3 = UsedCar.new('Honda2','Lexus',2010,30000,0.3,1000000),
  car4 = UsedCar.new('Toyota','Camery',2009,20000,0.3,6000000),
  car5 = UsedCar.new('Ford','Sportscar',2013,10000,0.3,5000000)
]

puts cars[0].mileage
puts cars[0].depreciated_mileage_value
