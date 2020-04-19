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

# Revisiting this problem
def triangle(n, position)
  n.times do |line|
    
    case position
    when 'br' then location = line + 1
    when 'bl' then location = line + 1
    when 'tr' then location = 5 - line
    when 'tl' then location = 5 - line
    end

    number_of_stars = location
    number_of_whitespace = n - location

    case position
    when 'br' then puts " " * number_of_whitespace + "*" * number_of_stars
    when 'bl' then puts "*" * number_of_stars + " " * number_of_whitespace
    when 'tr' then puts " " * number_of_whitespace + "*" * number_of_stars
    when 'tl' then puts "*" * number_of_stars + " " * number_of_whitespace
    end
  end
end

# further refactor
def triangle(n, position)
  result = []
  n.times do |line|
    
    case position
    when 'br', 'bl' then location = line + 1    
    when 'tr', 'tl' then location = 5 - line  
    end

    number_of_stars = location
    number_of_whitespace = n - location
    
    case position
    when 'tr', 'br' then puts " " * number_of_whitespace + "*" * number_of_stars
    when 'bl', 'tl' then puts "*" * number_of_stars
    end
    
  end  
end
