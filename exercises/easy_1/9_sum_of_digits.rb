# Write a method that takes one argument,
# a positive integer,
# and returns the sum of its digits.

# Input:
#   integer
#     -positive
# Output:
#   integer
#     -sum of input's digits
#
#
# Algorithm
#   -define a method `sum` that takes an argument `int`
#   -convert int into a string object
#   -split string into character array
#   -iterate through array
#      -convert current element into integer and sum it with a variable

def sum(int)
  string_array = int.to_s.chars
  number_array = string_array.map do |number|
    number.to_i
  end

  number_array.reduce(:+)
end

# ls way
def sum(number)
  number.to_s.chars.map(&:to_i).reduce(:+)
end

# another way
def sum(number)
  number.to_s.chars.map(&:to_i).sum
end

# another way, maybe slighlty more readable
def sum(number)
  digit_array = number.to_s.chars
  digit_array.map!(&:to_i)
  digit_array.sum
end


# Examples/Test Cases
puts sum(23) == 5
puts sum(496) == 19
puts sum(123_456_789) == 45
