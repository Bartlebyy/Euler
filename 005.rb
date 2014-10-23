# 2520 is the smallest number that can be divided by each of the numbers from 1
# to 10 without any remainder.
#
# What is the smallest positive number that is evenly divisible by all of the
# numbers from 1 to 20?

require 'prime'
beginning = Time.now

def calculate_start max
  product = 1
  Prime.each(max) { |prime| product *= prime }
  product
end

def smallest_positive_number_generator start
  number = start
  until divisible_up_to_20?(number) do
    number += start
  end
  number
end

def divisible_up_to_20? number
  n = 1
  while number % n == 0
    n += 1
  end
  n >= 21
end

start = calculate_start(20)
solution = smallest_positive_number_generator(start)

puts "The smallest positive number that is evenly divisible from 1 to 20 is #{solution}"
puts "Time elapsed #{Time.now - beginning} seconds."
