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

    # https://medium.com/better-programming/two-ways-of-finding-the-element-that-occurs-the-most-in-an-array-with-ruby-7fb484ea1a6d

    def most_frequent_customer
        customers_instances_array = self.meals.map { |meal| meal.customer}
        customers_instances_array.max_by { |customer| customers_instances_array.count(customer) }
        # binding.pry
    end

    def worst_tipped_meal 
        worst_tip_instance = Meal.all.min { |meal_a, meal_b| meal_a.tip <=> meal_b.tip }
        # binding.pry
    end

end


