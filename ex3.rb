cars = 100
space_in_a_car = 4
drivers =15
cars_not_driven=cars-drivers
cars_driven = drivers
pass=5
carpool_capacity = cars_driven * space_in_a_car
average_pass_per_car=pass/cars_driven

puts "There are #{cars} cars available."

puts "there are only #{drivers} drivers available"
