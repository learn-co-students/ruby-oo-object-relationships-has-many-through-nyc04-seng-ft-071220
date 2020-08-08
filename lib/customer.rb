require 'pry'
require_relative 'meal.rb'


class Customer

    attr_accessor :name, :age

    @@all = []

    def initialize(name,age)
        @name = name
        @age= age
        @@all << self
    end

    def self.all
        @@all
    end

    def new_meal(waiter,total,tip)
        Meal.new(waiter,self,total,tip)
    end

    def meals
        Meal.all.select{|meal| meal.customer == self}
    end

    def waiters
        meals.map{|meal| meal.waiter}
    end

end

# JJ = Customer.new("JJ", 22)
# Kiki = Customer.new("Kiki", 21)
# JJ.new_meal("waiter1", 20, 2)
# puts JJ.meals