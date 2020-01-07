# Write a method that takes two arguments,
# a positive integer and a boolean,
# and calculates the bonus for a given salary.
# If the boolean is true, the bonus should be half of the salary.
# If the boolean is false, the bonus should be 0.

# Input
#   integer:
#     -positive
#   boolean:
#     -true/false
#
# Is input validation necessary?
# Do we need to handle floats?
#
# Algorithm
#   -if input boolean is `false`#
#     -program returns 0
#   -if boolean `true`
#     -return input integer divided by two

def calculate_bonus(int, boolean)
  case boolean
  when false
    return 0
  when true
    int / 2
  end
end

# another way
def calculate_bonus(int, boolean)
  return 0 if boolean == false
  int / 2
end

# ls way with ternary operator
def calculate_bonus(salary, bonus)
  bonus ? (salary / 2) : 0
end

# Examples/Test Cases
puts calculate_bonus(2800, true) == 1400
puts calculate_bonus(1000, false) == 0
puts calculate_bonus(50000, true) == 25000
