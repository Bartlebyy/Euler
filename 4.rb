beginning = Time.now
@largest_palindrome = 0

def palindrome?(number)
  number == number.to_s.reverse.to_i
end

def record_palindrome(number)
  @largest_palindrome = number if number > @largest_palindrome
end

(100..999).each do |a|
  (100..999).each do |b|
    record_palindrome(a*b) if palindrome?(a*b)
  end
end

puts "The largest palindrome is: #{@largest_palindrome}"
puts "Time elapsed #{Time.now - beginning} seconds."
