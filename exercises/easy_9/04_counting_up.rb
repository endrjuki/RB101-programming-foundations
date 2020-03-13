# Write a method that takes an integer argument, and returns an Array of all integers,
# in sequence, between 1 and the argument.
# You may assume that the argument will always be a valid integer that is greater than 0.

# Input
# - integer
#  - last char of sequence
# Output
# - array
#   -sequence of numbers between 1 and input integer

def sequence(number)
  Array(1..number)
end

sequence(5) == [1, 2, 3, 4, 5]
sequence(3) == [1, 2, 3]
sequence(1) == [1]

# Further Exploration
# Food for thought: what do you think sequence should return if the
# argument is not greater than 0. For instance, what should you do
# if the argument is -1? Can you alter your method to handle this case?

def sequence(number)
  if number < 1
    Array(number..1).reverse
  else
    Array(1..number)
end
