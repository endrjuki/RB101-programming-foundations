# Write a method that counts the number of occurrences of each element in a given array.

# Input: array
# Output: string

# Explicit requirements:
#  -method that takes an array and counts occurances of each element in a given array
# Implicit requirements:
#  -method prints a string for each element in the array
#  -string contains current element and its occurance, divided by `=>` and space either side of it.

# Algorithm:
# - initialize a hash with default value 0
# - iterate through array
#   - add each element as a key to the hash and increment correspodning value
#     by 1
# - output the contents of hash

# Test Cases:
# count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def count_occurances(arr)
  occurances = Hash.new(0)
  arr.each { |element| occurances[element] += 1 }
  occurances.each { |k, v| puts "#{k} => #{v}"}
end
