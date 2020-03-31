# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array.
# The array will never be empty and the numbers will always be positive integers.

# Input
# - array
#   - contains integers

# Output
# - integer
#   - average of of all numbers in the array

# Algorithm
# - sum all numbers in the array
# - divide the sum by the number of elements in the array

def average(arr)
  arr.reduce(:+) / arr.length.to_f
end
