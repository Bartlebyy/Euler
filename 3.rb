require 'prime'
beginning = Time.now

GOAL = 600851475143
largest_factor = 1

factor_array = Prime.prime_division(GOAL)
factor_array.each {|n, count| largest_factor = n if n > largest_factor }

puts "Largest factor is #{largest_factor}"
puts "Time elapsed #{Time.now - beginning} seconds."
