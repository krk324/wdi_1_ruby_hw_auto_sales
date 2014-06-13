require_relative '../lib/usedcar.rb'

class CarLot
  require 'date'

  attr_reader :lot_value, :car_collections
  attr_accessor :name, :usedcars, :cars


  def initialize(name,usedcars,cars)
    @name = name
    @usedcars = usedcars
    @cars = cars
    @lot_value = lot_value_calc
    @car_collections = cars + usedcars
  end

  def lot_value_calc
    usedcar_valuelist = @usedcars.map {|thing| thing.markup_price}
    cars_valuelist = @cars.map { |thing| thing.markup_price}

    total_valuelist = usedcar_valuelist + cars_valuelist

    total_valuelist.inject{|sum,x| sum + x }

  end

end
