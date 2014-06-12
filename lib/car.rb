require 'date'

class Car

  attr_reader :make, :model, :year, :manufacture, :value
  attr_accessor :msrp


  def initialize(make,model,year,msrp)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    #Add depreciated value taking year of manufacture. 5% per year
    @value = depreciated_value
    #Add modified price
  end

  def depreciated_value()
    year_diff = Date.today.year - @year
    value = @msrp-(year_diff*(@msrp*0.05))
    #@msrp*(1+0.05)**-year_diff
    if value < 0
      value = 0
    end
    value
  end


end
