require_relative '../lib/usedcar.rb'

class CarLot

  attr_reader :cars
  attr_accessor :name


  def initialize(name)
    @name = name
    @cars = []
  end

  def value
    # cars.map{ |car| car.price }.reduce{ |sum, price| sum + price }
    cars.map(&:price).reduce(0, :+)
  end

  # def lot_value_calc
  #   usedcar_valuelist = @usedcars.map {|thing| thing.markup_price}
  #   cars_valuelist = @cars.map { |thing| thing.markup_price}

  #   total_valuelist = usedcar_valuelist + cars_valuelist

  #   total_valuelist.inject{|sum,x| sum + x }

  # end

  def cars_with_make(make)
    cars.select{ |car| car.make == make }
  end

  def cars_with_model(model)
    cars.select{ |car| car.model == model }
  end

  def cars_with_year(year)
    cars.select{ |car| car.year == year }
  end

end
