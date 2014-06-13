require 'date'

class Car
  DEFAULT_MARKUP = 0.1
  ##Car::DEFAULT_MARKUP can call constant ouside from this class.

  attr_accessor :make, :model, :year, :msrp, :markup
  #attr_reader is barely used in rail apps.

  def initialize(make:,model:,year:,msrp:,markup: DEFAULT_MARKUP)
    #@make, @model, @year, @msrp, @markup = make, model, year, msrp, markup
    @make = make
    @model = model
    @year = year
    @msrp = msrp
    @markup = markup

  end

  def price
    (1+markup) * depreciated_value
  end

  private

  def depreciated_value
    msrp-((Date.today.year - year)*(msrp*0.05))
    #@msrp*(1+0.05)**-year_diff
  end


end
