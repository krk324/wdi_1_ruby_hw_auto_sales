require_relative '../lib/usedcar.rb'
require_relative '../lib/carlot.rb'
require 'pry'

carlot1 = CarLot.new("Tom's store")

pry.binding

puts carlot1.lot_value

puts carlot1.car_collections



