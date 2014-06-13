require_relative '../lib/car.rb'
require_relative '../lib/damage.rb'


class UsedCar < Car
  DEPRECIATION_PER_MILE = 0.000001

  attr_accessor :mileage
  attr_reader :damages #since you can chnage damages object it just reads.

  def initialize(mileage:,**attributes)
    #super(make,model,year,msrp,markup)
    super(attributes)
    @mileage = mileage
    @damages = []
  end

  def damaged?
    damages.any?
  end

  def depreciated_value
    #sum_repair_cost = @repair_cost.inject{|sum,x| sum + x }
    #call repair_cost from damages object and reduce will do sum = sum + damage
        #reduce(:+) will add to nil so it won't work. reduce is same as inject
    super - damages.map(&:repair_cost).reduce(0,:+) - mileage * DEPRECIATION_PER_MILE
  end

end
