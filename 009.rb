# https://projecteuler.net/problem=9
beginning = Time.now

def find_pythagorean_triplet max
  (1..max).each do |a|
    (1..max-a).each do |b|
      c = Math.hypot(a,b)
      if a + b + c == max
        return a*b*c
      elsif a + b + c > max #weirdly enough, this adds time...
        next
      end
    end
  end
end

puts find_pythagorean_triplet(1000)
puts "Time elapsed #{Time.now - beginning} seconds."
