# Write a method that takes an Array of numbers and then returns the sum
#  of the sums of each leading subsequence for that Array.
# You may assume that the Array always contains at least one number.

# Algorithm
# - initialize var result = 0
# - loop through the array
# - save the current value to a variable
# -

sum_of_sums([3, 5, 2]) == (3) + (3 + 5) + (3 + 5 + 2) # -> (21)
sum_of_sums([1, 5, 7, 3]) == (1) + (1 + 5) + (1 + 5 + 7) + (1 + 5 + 7 + 3) # -> (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

def sum_of_sums(arr)
  result = 0
  arr.each_with_index do |n, idx|
    result += n * (arr.size - idx)
  end
  result
end

# shorter
def sum_of_sums(arr)
  result = 0
  arr.each_with_index {|n, idx| result += n * (arr.size - idx)}
  result
end

# ls solution 1

def sum_of_sums(arr)
  accumulator = 0
  total_sum = 0
  arr.each do |num|
    accumulator += num
    total_sum += accumulator
  end
  total_sum
end


# ls solution 2

def sum_of_sums(arr)
  total_sum = 0
  1.upto(arr.size) do |count|
    total_sum += arr.slice(0, count).reduce(:+)
  end
  total_sum
end
