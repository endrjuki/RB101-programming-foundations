# Further Exploration
# Assume you do not have the rotate_rightmost_digits or rotate_array methods.
# How would you approach this problem? Would your solution look different?
# Does this 3 part approach make the problem easier to understand or harder?
#
# There is an edge case in our problem when the number passed in as the argument
# has multiple consecutive zeros. Can you create a solution that preserves zeros?

# basically the issue stems from losing the leading zeros when converting string to int,
# therefore effectively shortening the number.
# [] returns nil when you try to access an element out of bounds of the array.
# for example number 1007:
# on the second iteration of rotate_rightmost_digits in max_rotation,
# number value will be 71, but n will be 3:
#  - arr[-n..-1] will return nil

# I'd alter the methods to work with array of strings and then do the conversion
# to integer in the max_rotation

# Solution preserves zeros until last step, when it loses it during conversion
# conversion to integer. I could potentially return an array of integers though.

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number_array, n)
  number_array[-n..-1] = rotate_array(number_array[-n..-1])
  number_array
end

def max_rotation(number)
  number_digits = number.to_s.size
  number_array = number.to_s.chars
  number_digits.downto(2) do |n|
    number_array = rotate_rightmost_digits(number_array, n)
  end
  number_array.join.to_i
end

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845
