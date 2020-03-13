# A double number is a number with an even number of digits whose left-side
# digits are exactly the same as its right-side digits.
# For example, 44, 3333, 103103, 7676 are all double numbers. 444, 334433, and 107 are not.

# Write a method that returns 2 times the number provided as an argument,
# unless the argument is a double number; double numbers should be returned as-is.

# Algorithm
#  - Determine if number is a double number (return true/false)
#    - check if number is even, return false if its not
#    - transfrom number to string
#    - retrieve string's length
#    - divide length by two to establish how many chars on each side
#    - compare chars on both sides
#  - If it is double:
#    - return number
#  - if its not:
#    - multiply the integer by 2 and return it
#

def is_double?(number)
  chars = number.to_s
  char_length = chars.size
  return false if char_length.odd?
  half_chars = char_length / 2
  chars[0..half_chars - 1] == chars[half_chars..-1]
end

def twice(number)
  if is_double?(number)
    return number
  else
    number * 2
  end
end

twice(37) == 74
twice(44) == 44
twice(334433) == 668866
twice(444) == 888
twice(107) == 214
twice(103103) == 103103
twice(3333) == 3333
twice(7676) == 7676
twice(123_456_789_123_456_789) == 123_456_789_123_456_789
twice(5) == 10
