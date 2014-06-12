require_relative '../lib/car.rb'

car1 = Car.new('Toyota','Lexus',2010,50000)
car2 = Car.new('Honda','Civic',2012,20000)
car3 = Car.new('Honda2','Lexus',2010,30000)
car4 = Car.new('Toyota','Camery',2009,20000)
car5 = Car.new('Ford','Sportscar',2013,10000)

puts car1.value
