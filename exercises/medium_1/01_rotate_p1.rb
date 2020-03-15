# Write a method that rotates an array by moving the first element to the end of the array. The original array should not be modified.
# Do not use the method Array#rotate or Array#rotate! for your implementation.
# example:

# Algorithm
# - iterate through array
#   - save first element to a variable
#   - rest of the elements append to a new array
#   - append first element to the array if the last element has been appended already

def rotate_array(arr)
  result = []
  first = []
  arr.each_with_index do |elm, idx|
    first << elm if idx == 0
    result << elm unless idx == 0
    result << first if idx == arr.size - 1
  end
  result.flatten
end
rotate_array([7, 3, 5, 2, 9, 1]) == [3, 5, 2, 9, 1, 7]
rotate_array(['a', 'b', 'c']) == ['b', 'c', 'a']
rotate_array(['a']) == ['a']

x = [1, 2, 3, 4]
rotate_array(x) == [2, 3, 4, 1]   # => true
x == [1, 2, 3, 4]                 # => true

# Revisiting this problem

# Input
# - Array

# Output
# - Array
#   - first element removed and appended to the end of the array

# Algorithm
# - map a new array
# - shift and append the elements


def rotate_array(arr)
  new_array = arr.map { |element| element }
  new_array.push(new_array.shift)
end

# LS solution (still better...)

def rotate_array(arr)
  arr[1..-1] + [arr[0]]
end
