# Write a method that takes one integer argument,
# which may be positive, negative, or zero.
# This method returns true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value.

# Input
# - integer

# Output
# - boolean
#   - true if input integer odd
#   - false otherwise

# How I would do it now
def integer_odd?(int)
  int.abs.odd?
end

# my first solution
def integer_odd?(int)
  int.abs % 2 != 0
end

# another solution
def integer_odd?(int)
  int.abs.remainder(2) != 0
end
