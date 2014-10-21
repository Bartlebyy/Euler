beginning = Time.now
current_fibonacci = 2
past_fibonacci = 1
sum_of_even_fibonacci = 0

until current_fibonacci > 4000000 do
  sum_of_even_fibonacci += current_fibonacci if current_fibonacci.even?

  next_fibonacci = current_fibonacci + past_fibonacci
  past_fibonacci = current_fibonacci
  current_fibonacci = next_fibonacci
end

puts sum_of_even_fibonacci
puts "Time elapsed #{Time.now - beginning} seconds."
