require 'pry'

require_relative "waiter"
require_relative "meal"
require_relative "customer"

patrick = Customer.new("Patrick", 21)
howard = Customer.new("Howard", 30)
daniel = Customer.new("Daniel", 30)
terrance = Waiter.new("Terrance", 1)
joe = Waiter.new("Joe", 10)
esmery = Waiter.new("Esmery", 2)
andrew = Waiter.new("Andrew", 3)

patrick.new_meal(esmery, 20, 6)
howard.new_meal(terrance, 15, 2)
howard.new_meal(joe, 15, 4)
howard.new_meal(andrew, 15, 5)
howard.new_meal(andrew, 15, 5)
howard.new_meal(esmery, 15, 5)
howard.new_meal(esmery, 15, 5)
daniel.new_meal(terrance, 20, 1)
daniel.new_meal(esmery, 15, 3)
daniel.new_meal(esmery, 15, 3)
daniel.new_meal(esmery, 15, 3)
daniel.new_meal(esmery, 15, 3)
daniel.new_meal(esmery, 15, 3)
daniel.new_meal(esmery, 15, 3)

binding.pry
0
