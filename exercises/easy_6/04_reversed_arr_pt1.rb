# Write a method that takes an Array as an argument, and reverses
# its elements in place; that is, mutate the Array passed into this method.
# The return value should be the same Array object.

# You may not use Array#reverse or Array#reverse!.

# Input
# - array

# Output
# - array (same object)
# - elements in reverse order

# Algorithm
# - initialize reverse_array = []
# - Iterate through an array in reverse, append each element to reverse array
# - replace array contents with reverse array contents

def reverse!(array)
  reverse_array = []
  array.reverse_each do |element|
    reverse_array << element
  end
  array.replace(reverse_array)
end

# ls way - with parallel assignment
def reverse!(array)
  left_index = 0
  right_index = -1

  while left_index < array.size / 2 # loop has to terminate in the middle of the list, otherwise it will rebuild the original array eventually
    array[left_index], array[right_index] = array[right_index], array[left_index]
    left_index += 1
    right_index -= 1
  end
end

# Examples / Test cases
list = [1,2,3,4]
result = reverse!(list)
result == [4, 3, 2, 1]
list == [4, 3, 2, 1]
list.object_id == result.object_id

list = %w(a b e d c)
reverse!(list) == ["c", "d", "e", "b", "a"]
list == ["c", "d", "e", "b", "a"]

list = ['abc']
reverse!(list) == ["abc"]
list == ["abc"]

list = []
reverse!(list) == []
list == []
