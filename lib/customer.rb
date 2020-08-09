require 'pry'

class Customer
    attr_accessor :name, :age

    @@all = []

    def initialize(name, age) 
        @name = name
        @age = age
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(waiter, total, tip=0)
        Meal.new(self, waiter, total, tip) # creating a new meal by customer
    end

    #the customer is going to look at all of the meals, and then select only the ones
    # that belong to them
    def meals
        Meal.all.select do |meal|  
            meal.customer == self  
        end
    end

    #get every waiter from every meal Rachel has had, take the array of all of the meals
    # map over it, getting the waiter from each of those meals.
    def waiters
        meals.map do |meal|  
            meal.waiter  
        end
    end

  
end
# binding.pry
# 0