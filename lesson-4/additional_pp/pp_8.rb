# What happens when we modify an array while we are iterating over it?
# What would be output by this code?

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.shift(1)
end

# output:
#1
#3
# shift(n) removes first n elements and returns them in a new array
# in this case, shift(1) removes the the first element upon each iteration,
# shift on the first pass changes the value found by p number on second pass,
# because as shift removes element at index 0(in this case 1)
# the new element at index 0 becomes 2
# on the second pass, `number` references the element at index 1, which is '3' now.
# to better understand this we can augment the loop with some extra debug information
=begin

numbers = [1, 2, 3, 4]
numbers.each_with_index do |number, index|
  p "#{index}  #{numbers.inspect}  #{number}"
  numbers.shift(1)
end

=end

numbers = [1, 2, 3, 4]
numbers.each do |number|
  p number
  numbers.pop(1)
end

# output:
#1
#2
# pop(n) removes the last n elements and returns them in a new array.
# in this case pop(1) would remove the last element upon each iteration
# therefore each would be able to iterate through this array only twice, before stopping
# because pop would've removed '3' and '4' values
