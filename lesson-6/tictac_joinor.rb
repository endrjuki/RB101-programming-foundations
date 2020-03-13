# Write a method called joinor that will produce the following result(waaay below.):

# Methods arguments:
# 1) Input array
# 2) Delimiter, set by default to ', '
# 3) Delimter for the last value of the array, set by default to 'or'

# Algorithm
#  - split array into:
#    - 0..-2 elements
#    - last element
#  - now 2 branches of logic:
#    - if first array == second array, only use last delimiter
#
#    - else use delimter to join together left_side, concat the last_delimiter
#      and concat the last element of the array
#

def joinor(arr, delimiter = ', ', last_delimiter = 'or')
  left_side = arr[0..-2]
  right_side = arr[-1..-1]

  if left_side.size == 1
    arr.join(last_delimiter)
  else
    msg = left_side.join(delimiter).concat(" #{last_delimiter} ").concat(right_side.join)
  end
end

joinor([1, 2])                   # => "1 or 2"
joinor([1, 2, 3])                # => "1, 2, or 3"
joinor([1, 2, 3], '; ')          # => "1; 2; or 3"
joinor([1, 2, 3], ', ', 'and')   # => "1, 2, and 3"

# this works, but doesn't quite work as the example method,
# let's try something else

# Algorithm
# - Split array into
#   - left array: contains 0..-2 elements
#   - last element
# - initialize a string : msg
# - 2 branches of logic:
# - if left array is size is equal to 1
#   - join array using last delimiter
# - else
#   - iterate through left array
#     - concat current element to the msg
#     - concat delimiter to the msg
#   - concat last delimiter
#   - concat last element.

def joinor(arr, delimiter=', ', last_delimiter='or')
  left_array = arr[0..-2]
  last_element = arr.last

  msg = ''
  if left_array.size == 1
    msg = arr.join(" #{last_delimiter} ")
  else
    left_array.each do |num|
      msg.concat(num.to_s, delimiter)
    end
    msg.concat("#{last_delimiter} ", last_element.to_s)
  end
end

# my method still doesn't handle the arr.size == 1 scenario, didn't catch that.

# LS way
def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[-1] = "#{word} #{arr.last}"
    arr.join(delimiter)
  end
end

# lessons learned from LS way
def joinor(arr, delimiter=', ', word='or')
  case arr.size
  when 0 then ''
  when 1 then arr.first
  when 2 then arr.join(" #{word} ")
  else
    arr[0..-2].join(delimiter).concat(" #{word} ").concat(arr.last.to_s)
  end
end
