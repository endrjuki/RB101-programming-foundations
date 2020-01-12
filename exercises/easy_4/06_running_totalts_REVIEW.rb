# Write a method that takes an Array of numbers,
# and returns an Array with the same number of elements,
# and each element has the running total from the original Array.

# Input
# - array of numbers
# Output
# - array of numbers
# - different object
# - same amount of elements as original
# - each element is a sum of current + all previous element

# Algorithm
# - initialize an empty Array `result`
# - initiate a variable `current_total` and set it to 0
# - iterate through array with index
#   - don't transform the first element
#     - append first element to the array
#     - increment `current_total` by current element
#     - skip to next iteration
#   - increment `current_total` by current element and append the value to `result`
# - return the ´result` array

def running_total(arr)
  result = []
  current_total = 0
  arr.each_with_index do |num, idx|

    if idx == 0
      result << num
      current_total += num
      next
    end

    result << (current_total += num)
  end
  result
end

def running_total(arr)
  result = []
  arr.reduce do |sum, num|
    result << sum if result.empty?
    sum + num
    puts sum
  end
  result
end
