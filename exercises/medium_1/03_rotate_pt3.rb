# 735291 -> rotate to left
# 352917 -> keep the first 1 digits, rotate remaining digits to left
# 329175 -> keep the first 2 digits in place, rotate rest to left
# 321759 -> keep the first 3 digits in place, rotate rest to left
# 321597 -> keep the first 4 digits in place, rotate rest to left
# 21579 -> THIS IS MAXIMUM ROTATION

# Algorithm
# - determine the amount of characters in the number
# - loop over the digits
#   - call rotate_rightmost_digits on index 0..-1


def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1])
  all_digits.join.to_i
end

def max_rotation(number)
  rotate_chars = number.to_s.size
  new_number = number
  loop do
    break if rotate_chars == 1
    new_number = rotate_rightmost_digits(new_number, rotate_chars)
    rotate_chars -= 1
  end
  new_number
end

max_rotation(735291) == 321579
max_rotation(3) == 3
max_rotation(35) == 53
max_rotation(105) == 15 # the leading zero gets dropped
max_rotation(8_703_529_146) == 7_321_609_845

# ls way
def max_rotation(number)
  number_digits = number.to_s.size
  number_digits.downto(2) do |n|
    number = rotate_rightmost_digits(number, n)
  end
  number
end
