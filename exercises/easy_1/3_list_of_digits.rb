# Write a method that takes one argument,
# a positive integer,
# and returns a list of the digits in the number.

# Input
# - integer
#   - positive

# Output
# - array
#   - list of digits

# How I would do it now
def digit_list(number)
  number.digits.reverse
end

# ls solution - idiomatic way
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

# ls solution - brute force way
# Algorithm
# - initialize an empty array 'digits'
# - construct a loop
#   - use divmod(10), initaliaze and assign values returned to 2 local variables:
#     *number
#     *remainder
#   - push remainder to the start of the digits array
#   - break out of loop if number is 0
# - return digits array

def digit_list(number)
  digits = []

  loop do
    number, remainder = number.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end
