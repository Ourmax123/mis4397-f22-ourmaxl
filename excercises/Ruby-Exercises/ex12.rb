print "Give me a number: "
number = gets.chomp.to_i

bigger = number * 100
puts "A bigger number is #{bigger}."

print "Give me another numbere: "
another = gets.chomp
number = another.to_f

smaller = number / 100
puts "A smaller number is #{smaller}."

print "Give me a number (10%)."
number = gets.chomp.to_f
percent = number * 0.10

puts "10 percent of #{number} is #{percent}"