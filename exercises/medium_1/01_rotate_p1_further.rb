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

#ls way
def rotate_array(arr)
  arr[1..-1] + [arr[0]] # essentially slices everything out of the array except the first element, and then appends the first element at the end.
end


# Further Exploration
# Write a method that rotates a string instead of an array.
# Do the same thing for integers.
# You may use rotate_array from inside your new method.

def rotate_string(string)
  rotate_array(string.chars).join('')
end

def rotate_integer(integer)
  rotate_array(integer.to_s.chars).join('').to_i
end
