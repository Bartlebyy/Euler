# Euler discovered the remarkable quadratic formula:
#
# n² + n + 41
#
# It turns out that the formula will produce 40 primes for the consecutive values
# n = 0 to 39. However, when n = 40, 402 + 40 + 41 = 40(40 + 1) + 41 is divisible
# by 41, and certainly when n = 41, 41² + 41 + 41 is clearly divisible by 41.
#
# The incredible formula  n² − 79n + 1601 was discovered, which produces 80 primes
# for the consecutive values n = 0 to 79. The product of the coefficients, −79 and
# 1601, is −126479.
#
# Considering quadratics of the form:
#
# n² + an + b, where |a| < 1000 and |b| < 1000
#
# where |n| is the modulus/absolute value of n
# e.g. |11| = 11 and |−4| = 4
# Find the product of the coefficients, a and b, for the quadratic expression that
# produces the maximum number of primes for consecutive values of n, starting with
# n = 0.

require "prime"
beginning = Time.now

a = (-999..999)
b = (-999..999)
max_n = 0
correct_a = 0
correct_b = 0

a.each do |a|
  b.each do |b|
    n = 0
    while Prime.prime?(n**2 + a*n + b)
      if n > max_n
        max_n = n
        correct_a = a
        correct_b = b
        puts "With an 'a' of #{a} and a 'b' of #{b}, we achieved a score from 0 to #{n}."
      end
      n += 1
    end
  end
end

puts "The final answer is #{correct_a * correct_b}."
puts "Time elapsed #{Time.now - beginning} seconds."
