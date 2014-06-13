require 'date'

class Car

  attr_reader :make, :model, :year, :manufacture, :value, :markup_price
  attr_accessor :msrp, :markup


  def initialize(make,model,year,msrp,markup)
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    #Add depreciated value taking year of manufacture. 5% per year
    @markup = markup
    @markup_price = markup_price_calc
    @value = depreciated_value
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
    (1+@markup) * @msrp
  end


end
