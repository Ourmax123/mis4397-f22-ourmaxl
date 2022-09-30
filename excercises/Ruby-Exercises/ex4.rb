#varaible for cars value
cars = 100
#varaible for space in a car value
space_in_a_car = 4
#varaible for drivers value
drivers = 30
#varaible for passengers value
passengers = 90
#varaible for cars not driven value
cars_not_driven = cars - drivers
#varaible for cars driven value
cars_driven = drivers
#varaible for carpool capacity value
carpool_capacity = cars_driven * space_in_a_car
#varaible for avg. person per car value
average_passengers_per_car = passengers / cars_driven


puts "There are #{cars} cars available."
puts "There are only #{drivers} drivers available."
puts "There will be #{cars_not_driven} empty cars today."
puts "We can transport #{carpool_capacity} people today."
puts "We have #{passengers} to carpool today."
puts "We need to put about #{average_passengers_per_car} in each car"