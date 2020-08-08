require 'pry'

class Customer

    attr_accessor :name, :age 

    @@all = []

    def initialize(name_param, age_param)
        @name = name_param 
        @age = age_param
        @@all << self
    end

    def self.all 
        @@all 
    end

    def new_meal(waiter_param, total_param, tip_param)
        Meal.new(waiter_param, self, total_param, tip_param)
    end

    def meals 
        Meal.all.select { |meal| meal.customer == self }
        # binding.pry
    end

    def waiters 
        self.meals.map { |meal| meal.waiter }
        # binding.pry
    end



end