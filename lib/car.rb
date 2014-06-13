require 'date'

class Car

  attr_reader :make, :model, :year, :manufacture, :value, :markup_price
  attr_accessor :msrp, :markup


  def initialize(make,model,year,msrp,markup)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    @markup = markup
    @value = depreciated_value
    @markup_price = markup_price_calc

  end

private

  def depreciated_value
    year_diff = Date.today.year - @year
    value = @msrp-(year_diff*(@msrp*0.05))
    #@msrp*(1+0.05)**-year_diff
    if value < 0
      value = 0
    end
    value
  end

  def markup_price_calc
    (1+@markup) * @value
  end


end
