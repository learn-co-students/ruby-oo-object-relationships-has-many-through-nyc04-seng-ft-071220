class Waiter

    attr_accessor :name, :years_experience

    @@all = []
    def initialize(name, years_experience)
        @name = name 
        @years_experience = years_experience
        @@all << self
    end

    def self.all
        @@all 
    end

    def new_meal(customer, total, tip)
        Meal.new(self, customer, total, tip)
    end

    def meals
        # binding.pry
        Meal.all.select do |meal|
            meal.waiter == self
        end 
    end 

    def best_tipper
        highest_tip = meals.max do |meal_1, meal_2|
            meal_1.tip <=> meal_2.tip
        end 
        # binding.pry
        highest_tip.customer
    end 

end