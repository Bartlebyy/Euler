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
