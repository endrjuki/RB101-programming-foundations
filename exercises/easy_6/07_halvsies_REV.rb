# Write a method that takes an Array as an argument,
# and returns two Arrays (as a pair of nested Arrays)
# that contain the first half and second half of the original Array,
# respectively. If the original array contains an odd number of elements,
# the middle element should be placed in the first half Array.

# Input
# - array

# Output
# - array
# - nested array, contains input array split in half
# - if input contains odd number of elements, the middle goes in the first nested
# - array.

# Algorithm
# This one will modify the original object - not cool
# - determine size of the array
# - if size is even: elements_in_first = size / 2
# - if size is odd: elements_in_first = (size / 2) + 1
# - shift elements from input array to first_sub_arr elements_in_first times
# - append first_sub_arr to result arr
# - append the remainder of input arr to result arr

def halvsies(array)
  size = array.size

  if size.even?
    elements_in_first = size / 2
  else
    elements_in_first = (size / 2) + 1
  end

  first_sub_arr = []
  result = []

  elements_in_first.times {first_sub_arr << array.shift}
  result << first_sub_arr
  result << array
  result
end

# Algorithm
# Let's try to write one that doesn't mutate the input array.
# - If size odd: first_arr = size/2+1, second arr = size - first_arr
# - if size even: first_arr_size = size / 2, second arr = first_arr
# - initialize result = []
# - append first_sub_array to result: << arr[0, first_arr_size]
# - append second_sub_array to result: << arr[first_arr_size, second_arr_size]
# - return result

def halvsies(arr)
  size = arr.size
  if size.even?
    first_sub_arr_size = size / 2
    second_sub_arr_size = first_sub_arr_size
  else
    first_sub_arr_size = (size / 2) + 1
    second_sub_arr_size = size - first_sub_arr_size
  end

  result = []
  result << arr[0, first_sub_arr_size]
  result << arr[first_sub_arr_size, second_sub_arr_size]
  result
end

# ls method
def halvsies(array)
  middle = (array.size / 2.0).ceil # if size is not equal, ceil will round up, therefore making the first half bigger
  first_half = array.slice(0, middle)
  second_half = array.slice(middle, array.size - middle)
  [first_half, second_half]
end


halvsies([1, 2, 3, 4]) == [[1, 2], [3, 4]]
halvsies([1, 5, 2, 4, 3]) == [[1, 5, 2], [4, 3]]
halvsies([5]) == [[5], []]
halvsies([]) == [[], []]
