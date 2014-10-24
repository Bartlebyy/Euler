# 2^15 = 32768 and the sum of its digits is 3 + 2 + 7 + 6 + 8 = 26.
#
# What is the sum of the digits of the number 2^1000?
beginning= Time.now

def sum_of_digits num
  sum = 0
  num.to_s.each_char { |n| sum += n.to_i }
  sum
end


puts "The sum of the digits is #{sum_of_digits(2**1000)}"
puts "Time elapsed #{Time.now - beginning} seconds."
