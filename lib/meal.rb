class Meal
    attr_accessor :waiter, :customer, :total, :tip
    @@all = []

    def initialize(waiter_par, customer_par, total_par, tip_par = 0)
        @waiter = waiter_par
        @customer = customer_par
        @total = total_par
        @tip = tip_par
        @@all << self
    end

    def self.all
        @@all
    end
end