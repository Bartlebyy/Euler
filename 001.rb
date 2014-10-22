# If we list all the natural numbers below 10 that are multiples of 3 or 5, we
# get 3, 5, 6 and 9. The sum of these multiples is 23.
# 
# Find the sum of all the multiples of 3 or 5 below 1000.

beginning = Time.now
sum_of_multiples = 0
factors_of_3 = (3...1000).step(3).to_a
factors_of_5 = (5...1000).step(5).to_a

factors_of_5.each do |n|
  unless factors_of_3.include?(n)
    sum_of_multiples += n
  end
end

factors_of_3.each {|n| sum_of_multiples += n}

puts "sum of multiples: #{sum_of_multiples}"
puts "Time elapsed #{Time.now - beginning} seconds."
