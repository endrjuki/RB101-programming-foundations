# Write a method that can rotate the last n digits of a number.
# Note that rotating just 1 digit results in the original number being returned.
# You may use the rotate_array method from the previous exercise if you want. (Recommended!)
# You may assume that n is always a positive integer.

# Algorithm
# - determine index range of right side of the array
#   - -n..-1
# - determine index range of left side of array
# - 0..
partition?
def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end

def rotate_rightmost_digits(number, digits)
  digit_array = number.to_s.split('')
  left_side, right_side = digit_array.partition.with_index do |_, idx|
    idx < (digit_array.size - digits)
  end
  (left_side + rotate_array(right_side)).join('').to_i
end

rotate_rightmost_digits(735291, 1) == 735291
rotate_rightmost_digits(735291, 2) == 735219
rotate_rightmost_digits(735291, 3) == 735912
rotate_rightmost_digits(735291, 4) == 732915
rotate_rightmost_digits(735291, 5) == 752913
rotate_rightmost_digits(735291, 6) == 352917

# ls method
def rotate_rightmost_digits(number, n)
  all_digits = number.to_s.chars
  all_digits[-n..-1] = rotate_array(all_digits[-n..-1]) # check this, interesting
  all_digits.join.to_i
end
