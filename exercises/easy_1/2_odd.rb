# Write a method that takes one integer argument,
# which may be positive, negative, or zero.
# This method returns true if the number's absolute value is odd.
# You may assume that the argument is a valid integer value.

def integer_odd?(int)
  int % 2 != 0
end

def integer_odd2?(int)
  int.remainder(2) != 0
end
