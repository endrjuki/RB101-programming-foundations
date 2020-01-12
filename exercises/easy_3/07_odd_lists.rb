# Write a method that returns an Array
# that contains every other element of an Array that is passed in as an argument.
# The values in the returned list should be those values
# that are in the 1st, 3rd, 5th, and so on elements of the argument Array.

# Input: Array
# Output: Array
#   -contains every even element of the input Array
# Algorithm
#   -iterate through array and select all the elements for which the index is even

def oddities(array)
  result = []
  array.each_with_index do |element, idx|
    result << element if idx.even?
  end
  result
end

def oddities(array)
  index = -1
  array.select do |element|
    index += 1
    index.even?
  end
end

def oddities(array)
  index = 0
  result = []
  array.each do |element|
    result << element if index.even?
    index += 1
  end
  result
end

#Adam Isom 
def oddities(ary)
  ary.select.with_index{ |element, index| index.even? }
end

# Test Cases
oddities([2, 3, 4, 5, 6]) == [2, 4, 6]
oddities([1, 2, 3, 4, 5, 6]) == [1, 3, 5]
oddities(['abc', 'def']) == ['abc']
oddities([123]) == [123]
oddities([]) == []
