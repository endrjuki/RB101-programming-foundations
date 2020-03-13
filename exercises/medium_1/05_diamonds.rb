# Write a method that displays a 4-pointed diamond in an n x n grid,
# where n is an odd integer that is supplied as an argument to the method.
# You may assume that the argument will always be an odd integer.

# diamond(9)

#    *
#   ***
#  *****
# *******
#*********
# *******
#  *****
#   ***
#    *

# diamond(3)

# *
#***
# *

# Input
# - odd numbered integer

# Output
# - String
# - * char in diamond formation

# 1) find how much empty spaces required before placing * - n / 2
#    place n/2, place a 1 star.
# 2) place (n/2) - 1 empty spaces and '*' + '*' * 2 stars
#
# carry on until n = stars
# then place 1 space and n-2 stars
# repeat the cycle

# Algorithm
# - retrieve n from user
# - initialize variable stars and set it to 1
# - initialize variable spaces and set it to n/2
# - first while loop, while stars < n
#   - puts (' ' * spaces) + (' ' * stars)
#   - spaces -= 1
#   - stars += 2
# - second while loop, while stars > 0
#   - puts (' ' * spaces) + (' ' * stars)
#   - space += 1
#   - stars -= 2
#   end

def diamond(n)
  stars = 1
  spaces = n / 2

  while stars < n
    puts (' ' * spaces) + ('*' * stars)
    spaces -= 1
    stars += 2
  end

  while stars > 0
    puts (' ' * spaces) + ('*' * stars)
    spaces += 1
    stars -= 2
  end
end

# ls method
# - break down the problem into 2 parts:
#   - print single row
#   - iterating through these rows

def print_row(grid_size, distance_from_center)
  number_of_stars = grid_size - 2 * distance_from_center
  stars = '*' * number_of_stars
  puts stars.center(grid_size)
end
# distance keeps track how far are we from center row, with center row being at 0
# distance

def diamond(grid_size)
  max_distance = (grid_size - 1) / 2
  max_distance.downto(0) { |distance| print_row(grid_size, distance) }
  1.upto(max_distance)   { |distance| print_row(grid_size, distance) }
end
