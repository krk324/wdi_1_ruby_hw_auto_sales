require_relative '../lib/usedcar.rb'
require_relative '../lib/carlot.rb'

usedcars = [
  usedcar1 = UsedCar.new('Toyota','Lexus',2010,50000,0.3,9999999),
  usedcar2 = UsedCar.new('Honda','Civic',2012,20000,0.3,5000000),
  usedcar3 = UsedCar.new('Honda2','Lexus',2010,30000,0.3,1000000),
  usedcar4 = UsedCar.new('Toyota','Camery',2009,20000,0.3,6000000),
  usedcar5 = UsedCar.new('Ford','Sportscar',2013,10000,0.3,5000000)
]

cars = [
  car1 = Car.new('Toyota','Lexus',2010,50000,0.3),
  car2 = Car.new('Honda','Civic',2012,20000,0.3),
  car3 = Car.new('Honda2','Lexus',2010,30000,0.3),
  car4 = Car.new('Toyota','Camery',2009,20000,0.3),
  car5 = Car.new('Ford','Sportscar',2013,10000,0.3)
]

carlot = [
  carlot1 = CarLot.new('Dealer1',usedcars,cars),
  carlot2 = CarLot.new('Dealer2',usedcars,cars)
]

# puts carlot1.name
# puts carlot1.usedcars
# puts carlot1.cars

puts carlot1.lot_value

puts carlot1.car_collections



