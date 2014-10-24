# The sum of the squares of the first ten natural numbers is,
#
# 1^2 + 2^2 + ... + 10^2 = 385
# The square of the sum of the first ten natural numbers is,
#
# (1 + 2 + ... + 10)^2 = 552 = 3025
# Hence the difference between the sum of the squares of the first ten natural
# numbers and the square of the sum is 3025 − 385 = 2640.
#
# Find the difference between the sum of the squares of the first one hundred
# natural numbers and the square of the sum.
beginning = Time.now

def sum_of_squares num
  (1..num).map { |n| n**2 }.inject(:+)
end

def square_of_sums num
  (1..num).inject(:+) ** 2
end

def difference_of_sum_and_square num
  square_of_sums(num) - sum_of_squares(num)
end

puts "The difference is #{difference_of_sum_and_square(100)}"
puts "Time elapsed #{Time.now - beginning} seconds."
