class Damage
    attr_accessor :description, :repair_cost

    def initialize(description, repair_cost)
      @description = description
      @repair_cost = repair_cost
    end

end
