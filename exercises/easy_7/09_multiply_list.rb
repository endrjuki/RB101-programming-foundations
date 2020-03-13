# Write a method that takes two Array arguments
# in which each Array contains a list of numbers, and returns a new Array
# that contains the product of each pair of numbers from the arguments
# that have the same index.
# You may assume that the arguments contain the same number of elements.

def multiply_list(arr1, arr2)
  arr1.map.with_index {|n, idx| n * arr2[idx]}
end

multiply_list([3, 5, 7], [9, 10, 11]) == [27, 50, 77]


# Further Exploration: solve it with Array#zip

def multiply_list(arr1, arr2)
  arr1.zip(arr2).map { |a, b| a * b}
end
