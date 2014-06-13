require 'pry'
require_relative '../lib/usedcar.rb'

car1 = UsedCar.new(mileage: 999999, make: 'Toyota', model: 'Lexus', year: 2010, msrp: 50000, markup: 0.3, mileage: 999999)

pry.binding

#car1 = UsedCar.new('Toyota','Lexus',2010,50000,0.3,9999999,{'broken window' => 100}),

#car1 = UsedCar.new('Toyota','Lexus',2010,50000,0.3,9999999,Damage.new('boken window',1000)),
