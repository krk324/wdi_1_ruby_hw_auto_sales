require_relative '../lib/car.rb'

class UsedCar < Car
  attr_reader :depreciated_mileage_value
  attr_accessor :mileage

  def initialize(make,model,year,msrp,markup,mileage)
    super(make,model,year,msrp,markup)
    @mileage = mileage
    @depreciated_mileage_value = mileage_calculation
    # @damages =
  end

  def mileage_calculation
    depreciated_value - (@mileage*0.0001)
  end

end

# class Damage
#   attr_accessor :description :repair_cost

#    def initialize(description, repair_cost)
#     @description = description
#     @repair_cost = repair_cost
#   end

# end
