require 'prime'
beginning = Time.now

GOAL = 600851475143
largest_factor = 1

def prime_factors goal
  Prime.prime_division(goal).map(&:first)
end

largest_factor = prime_factors(GOAL).max

puts "Largest factor is #{largest_factor}"
puts "Time elapsed #{Time.now - beginning} seconds."
