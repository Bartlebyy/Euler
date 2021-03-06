# The sequence of triangle numbers is generated by adding the natural numbers.
# So the 7th triangle number would be 1 + 2 + 3 + 4 + 5 + 6 + 7 = 28. The first
# ten terms would be:
#
# 1, 3, 6, 10, 15, 21, 28, 36, 45, 55, ...
#
# Let us list the factors of the first seven triangle numbers:
#
#  1: 1
#  3: 1,3
#  6: 1,2,3,6
# 10: 1,2,5,10
# 15: 1,3,5,15
# 21: 1,3,7,21
# 28: 1,2,4,7,14,28
# We can see that 28 is the first triangle number to have over five divisors.
#
# What is the value of the first triangle number to have over five hundred divisors?

require "prime"
beginning = Time.now

def num_of_divisors(n)
    primes = n.prime_division
    arr_of_prime_factors = primes.any? ? primes.map { |prime, count| count + 1 } : [1]
    arr_of_prime_factors.inject(:*)
end

def create_triangle_num(n)
  triangle_num = n
  until n == 1 do
    n -= 1
    triangle_num += n
  end
  triangle_num
end

max_divisors = 0
current_number = 1000
current_triangle = create_triangle_num(current_number)

until max_divisors > 500
  max_divisors = [num_of_divisors(current_triangle), max_divisors].max
  current_number += 1
  current_triangle += current_number
end

puts "Current triangle number is #{current_triangle}, and the max divisor is #{max_divisors}"
puts "Time elapsed #{Time.now - beginning} seconds."
