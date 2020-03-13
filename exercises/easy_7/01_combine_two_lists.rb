# Combine Two Lists
# Write a method that combines two Arrays passed in as arguments,
# and returns a new Array that contains all elements from both Array arguments,
# with the elements taken in alternation.

# You may assume that both input Arrays are non-empty, and that they have the same number of elements.

# Input
# - array 1
# - array 2
# - both have same number of elements

# Output
# - Array
#   - array 1 and 2 elements combined in alteration: [ar1[0], ar2[0], ar[1]...]

# Algorithm
# - initalize empty array for results
# - determine size of array 1 and save value to variable
# - initialize a loop counter named index
# - initialize a loop
# - break loop if counter > size of the arr1
# - append first element of arr1 to results
# - append first element of arr2 to results
# - increment the counter
# - return result array

def interleave(arr1, arr2)
  results = []
  size = arr1.size
  index = 0

  while index < size
    results << arr1[index] << arr2[index]
    index += 1
  end
  results
end

# ls solution
def interlieve(arr1, arr2)
  results = []
  arr1.each_with_index do |element, idx|
    results << element << arr2[idx]
  end
  result
end

# solution with zip
def interleave(arr1, arr2)
  arr1.zip(arr2).flatten
end
