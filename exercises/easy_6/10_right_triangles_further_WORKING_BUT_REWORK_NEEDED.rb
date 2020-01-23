# Write a method that takes a positive integer, n, as an argument,
# and displays a right triangle whose sides each have n stars.
# The hypotenuse of the triangle (the diagonal side in the images below)
# should have one end at the lower-left of the triangle, and the other end at the upper-right.

# Example
#triangle(5)

#    *
#   **
#  ***
# ****
#*****

# Rules
# - line 1 = 4 spaces, 1 star
# - line 2 = 3 spaces, 2 stars
# - line 3 = 2 spaces, 3 stars
# - line 4 = 1 spaces, 4 stars
# - line 5 = 0 spaces, 4 stars

# Algorithm
# - initialize variable - line_count = 0
# - start looping
#   - break when line_count == n
#   - increment line_count by 1
#   - spaces = '' * (n - line_count)
#   - stars = '*' * line count

def triangle(n, orientation)
  line_count = 0
  case orientation
  when 'bottom_right'
    while line_count < n
      line_count += 1
      spaces = ' ' * (n - line_count)
      stars = '*' * line_count
      puts spaces + stars
    end

  when 'bottom_left'
    while line_count < n
      line_count += 1
      spaces = ' ' * (n - line_count)
      stars = '*' * line_count
      puts stars + spaces
    end

  when 'top_right'
    while line_count < n

      spaces = ' ' * line_count
      stars = '*' * (n - line_count)
      puts spaces + stars
      line_count += 1
    end

  when 'top_left'
    while line_count < n
      spaces = ' ' * (n + line_count)
      stars = '*' * (n - line_count)
      line_count += 1
      puts stars + spaces
    end
  end

end
