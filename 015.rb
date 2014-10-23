# Starting in the top left corner of a 2×2 grid, and only being able to move
# to the right and down, there are exactly 6 routes to the bottom right corner.
# How many such routes are there through a 20×20 grid?

beginning = Time.now
#This problem is solved using combinations and the pascal triangle
def lattice_routes num
  n = 2 * num
  k = num
  (n-k+1..n).inject(:*) / (1..k).inject(:*)
end

dimension = 20
answer = lattice_routes(dimension)

puts "There are #{answer} routes in a #{dimension} by #{dimension} grid."
puts "Time elapsed #{Time.now - beginning} seconds."
