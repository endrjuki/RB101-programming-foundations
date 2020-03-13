# Write a method that takes an Array of integers as input
# multiplies all the numbers together,
# divides the result by the number of entries in the Array,
# and then prints the result rounded to 3 decimal places. Assume the array is non-empty.

# Examples:
#show_multiplicative_average([3, 5])
#The result is 7.500

#show_multiplicative_average([6])
#The result is 6.000

#show_multiplicative_average([2, 5, 7, 11, 13, 17])
#The result is 28361.667

# Input
# - array of integers
# - is never empty

# Output
# - string
#   - The result is #{result}

# Algorithm
# - reduce the array to one value: multiplication of all elements
# - divide that value by size of input array
# - print out the text, interpolate the result and round its value to 3 decmal places

def show_multiplicative_average(arr)
  result = (arr.reduce(:*)) / arr.size.to_f
  puts "The result is %0.3f" % [result]
end

show_multiplicative_average([6])
