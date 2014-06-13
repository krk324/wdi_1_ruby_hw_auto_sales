class CarLot
require 'date'

  attr_reader
  attr_accessor :name, :usedcars, :cars


  def initialize(name,usedcar,cars)
    @name = name
    @usedcars = usedcars
    @cars = cars
  end

end
