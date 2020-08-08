class Meal
    
    attr_accessor :waiter, :customer, :total, :tip 

    @@all = []

    def initialize(waiter_param, customer_param, total_param, tip_param)
        @waiter = waiter_param
        @customer = customer_param
        @total = total_param
        @tip = tip_param
        @@all << self
    end

    def self.all 
        @@all 
    end

end