require_relative '../lib/car.rb'


class UsedCar < Car

  attr_reader :final_value, :description
  attr_accessor :mileage #, :damages, :repair_cost

  def initialize(make,model,year,msrp,markup,mileage)
    super(make,model,year,msrp,markup)
    @mileage = mileage
    @final_value = value_calculation
    # @description = damages.description
    # @repair_cost = damages.repair_cost
  end

private

  def value_calculation
    #sum_repair_cost = @repair_cost.inject{|sum,x| sum + x }
    depreciated_value - (@mileage*0.0001) #- sum_repair_cost
  end

end

# class Damage
#     attr_accessor :description, :repair_cost

#     def initialize(description, repair_cost)
#       @description = description
#       @repair_cost = repair_cost
#     end

# end
