# A palindromic number reads the same both ways. The largest palindrome made
# from the product of two 2-digit numbers is 9009 = 91 × 99.
#
# Find the largest palindrome made from the product of two 3-digit numbers.

beginning = Time.now
@largest_palindrome = 0

def palindrome?(str)
  str == str.reverse
end

def record_palindrome(number)
  @largest_palindrome = [number, @largest_palindrome].max
end

(100..999).each do |a|
  (100..999).each do |b|
    product = a*b
    record_palindrome(product) if palindrome?(product.to_s)
  end
end

puts "The largest palindrome is: #{@largest_palindrome}"
puts "Time elapsed #{Time.now - beginning} seconds."
