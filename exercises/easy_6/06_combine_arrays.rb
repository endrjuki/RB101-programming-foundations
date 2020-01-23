# Write a method that takes two Arrays as arguments,
# and returns an Array that contains all of the values from the argument Arrays.
# There should be no duplication of values in the returned Array,
# even if there are duplicates in the original Arrays.

def merge(arr1, arr2)
  (arr1 + arr2).uniq
end

# this variation should preserve order if thats necessary?
def merge(arr1, arr2)
  merged_array = []
  merged_array += arr1.uniq

  arr2.each do |item|
    merged_array << item unless merged_array.include?(item)
  end
  merged_array
end

# using Set class
require 'set'

def merge(ar1, ar2)
  Array ar1.to_set + ar2.to_set
end

# ls solution - using |
# Set Union — Returns a new array by joining ary with other_ary, excluding
# any duplicates and preserving the order from the original array.
def merge(arr1, arr2)
  arr1 | arr2
end

merge([1, 3, 5], [3, 6, 9]) == [1, 3, 5, 6, 9]
