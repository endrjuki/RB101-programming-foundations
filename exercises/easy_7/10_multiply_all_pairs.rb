# Write a method that takes two Array arguments
# in which each Array contains a list of numbers,
# and returns a new Array that contains the product of every pair of numbers
# that can be formed between the elements of the two Arrays.
# The results should be sorted by increasing value.

# You may assume that neither argument is an empty Array.

# Algorithm
# - initialize result array
# - loop throgh first array
#   - loop through second array
#     - multiply current outer loop value with current inner loop value
#     - save resulting value to result array
# - sort result array


def multiply_all_pairs(arr1, arr2)
  result = []
  arr1.each do |v1|
    arr2.each do |v2|
      result << v1 * v2
    end
  end
  result.sort
end

# LS - more compact solution

def multiply_all_pairs(arr1, arr2)
  arr1.product(arr2).map {|v1, v2| v1 * v2}.sort
end


multiply_all_pairs([2, 4], [4, 3, 1, 2]) == [2, 4, 4, 6, 8, 8, 12, 16]
