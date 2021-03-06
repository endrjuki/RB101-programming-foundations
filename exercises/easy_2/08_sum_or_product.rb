# Write a program that asks the user to enter an integer greater than 0,
# then asks if the user wants to determine the sum or product of all numbers
# between 1 and the entered integer.
# Example:
#>> Please enter an integer greater than 0:
#5
#>> Enter 's' to compute the sum, 'p' to compute the product.
#s
#The sum of the integers between 1 and 5 is 15.


#>> Please enter an integer greater than 0:
#6
#>> Enter 's' to compute the sum, 'p' to compute the product.
#p
#The product of the integers between 1 and 6 is 720.

# Input
#    integer
#     -greater than 0
#     -do we need validation?
#    string
#     - 's' or 'p'
#     - do we need validation?
# Rules
#   -program returns sum of number range between 1 and integer provided by user
#   -program returns sum of the number range if user requests it by typing in 's'
#   -program returns product of the number range if user requests it by typing in 'p'
#
# Algorithm
#   -prompt user for number input
#   -retrieve input from user
#   -prompt user for operation: sum or product
#   -retrieve input from user
#   -if input is 's'
#     -iterate through number range between 1 and input integer
#        -sum all the integer and return value
#   -if input is 'p'
#     -iterate through number range
#       -multiply all the integers and return value

# refactor
puts "Please enter an integer greater than 0"
number = gets.chomp.to_i

puts "Enter 's' to compute sum, 'p' to compute the product"
operation = gets.chomp

case operation
when 's'
  result = (1..number).reduce(:+)
  puts "The sum of integers between 1 and #{number} is #{result}"
when 'p'
  result = (1..number).reduce(:*)
    puts "The product of integers between 1 and #{number} is #{result}"
end
