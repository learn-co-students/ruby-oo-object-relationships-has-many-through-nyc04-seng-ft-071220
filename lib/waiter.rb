require 'pry'

class Waiter
    attr_accessor :name, :experience
    
    @@all = []

    def initialize(name, experience)
        @name = name
        @experience = experience
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(customer, total, tip=0)
        Meal.new(customer, self,total, tip)
      end

    #the customer is going to look at all of the meals, and then select only the ones
    # that belong to them
    def meals
        Meal.all.select do |meal|  
            meal.waiter == self  
        end
    end

    def best_tipper
        best_tipped_meal = meals.max do |meal_a, meal_b|
            meal_a.tip <=> meal_b.tip
    end
        best_tipped_meal.customer
    end



end