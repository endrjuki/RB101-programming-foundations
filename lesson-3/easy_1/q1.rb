# What would you expect the code below to print out?

numbers = [1, 2, 2, 3]
numbers.uniq

puts numbers

=begin
Output:
 1
 2
 2
 3

Method uniq called on Array object referenced by 'numbers' variable is non mutating and
returns a new array, therefore original array is not modified.
Furthermore, when puts method is called on an Array object, it will print each new element on a newline
Also, #to_s method will be called on each element automatically
