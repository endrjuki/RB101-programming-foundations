# Write a method named include? that takes an Array and a search value
# as arguments. This method should return true if the search value is in the array,
# false if it is not. You may not use the Array#include? method in your solution.

# Input
# - Array: where to look
# - Value: what to look for

# Output
#  -Boolean: true if there is a match

# Algorithm
# - initalize var match
# - iterate through array and compare values with value if value matches,
#   - if value matches current element
#     - set match to current element
#     - break out of loop
#   - match != '' ? return true : return false
# end

def include?(arr, value)
  match = ''

  arr.each do |element|
    if value == element
      match = element
      break
    end
  end

  match != '' ? (return true) : (return false)
end


# ls way

def include?(array, value)
  !!array.find_index(value) #!! turns any value into boolean object; find_index returns index of the first object that matches the value
end                           # returns nil if the value is not present

# revisiting this exercise
def include?(array, value)
  array.each {|element| return true if element == value}
  false
end


include?([1,2,3,4,5], 3) == true
include?([1,2,3,4,5], 6) == false
include?([], 3) == false
include?([nil], nil) == true
include?([], nil) == false
