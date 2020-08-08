class Waiter

    attr_accessor :name, :years_of_exp

    @@all = []
    
    def initialize(name_param, years_of_exp_param)
        @name = name_param
        @years_of_exp = years_of_exp_param
        @@all << self
    end

    def self.all 
        @@all 
    end

    def new_meal(customer_param, total_param, tip_param)
        Meal.new(self, customer_param, total_param, tip_param)
    end

    def meals 
        Meal.all.select { |meal| meal.waiter == self }
        # binding.pry
    end

    def best_tipper 
        best_tipper_instance = Meal.all.max { |meal_a, meal_b| meal_a.tip <=> meal_b.tip }
        best_tipper_instance.customer
        # binding.pry
    end

    #https://stackoverflow.com/questions/412169/how-to-find-an-item-in-array-which-has-the-most-occurrences
    # First build a hash mapping each value in the array to its frequency…
    # arr = [1, 1, 1, 2, 3]
    # freq = arr.inject(Hash.new(0)) { |h,v| h[v] += 1; h }
    # #=> {1=>3, 2=>1, 3=>1}
    # then use the frequency table to find the element with the highest frequency:
    # arr.max_by { |v| freq[v] }
    # #=> 1

    def most_frequent_customer
        Meal.all.map { |meal| meal.customer }
        binding.pry
    end

end

# howard = Customer.new("Howard", 30)
# daniel = Customer.new("Daniel", 30)
# terrance = Waiter.new("Terrance", 1)
# joe = Waiter.new("Joe", 10)
# esmery = Waiter.new("Esmery", 2)
# andrew = Waiter.new("Andrew", 3)

# howard.new_meal(terrance, 15, 2)
# howard.new_meal(joe, 15, 4)
# howard.new_meal(andrew, 15, 5)
# howard.new_meal(andrew, 15, 5)
# howard.new_meal(esmery, 15, 5)
# howard.new_meal(esmery, 15, 5)
# daniel.new_meal(terrance, 20, 1)
# daniel.new_meal(esmery, 15, 3)
# daniel.new_meal(esmery, 15, 3)
# daniel.new_meal(esmery, 15, 3)
# daniel.new_meal(esmery, 15, 3)
# daniel.new_meal(esmery, 15, 3)
# daniel.new_meal(esmery, 15, 3)
