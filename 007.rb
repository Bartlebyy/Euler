# By listing the first six prime numbers: 2, 3, 5, 7, 11, and 13, we can see
# that the 6th prime is 13.
#
# What is the 10 001st prime number?
beginning = Time.now
require "prime"

def prime_number num
  array = Prime.first num
  array.last
end

num = 10001
puts "The #{num} prime number is #{prime_number(num)}."
puts "Time elapsed #{Time.now - beginning} seconds."
