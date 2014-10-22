# The prime factors of 13195 are 5, 7, 13 and 29.
#
# What is the largest prime factor of the number 600851475143 ?

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
