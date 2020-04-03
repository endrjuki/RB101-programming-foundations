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

def compute_sum(number)
  (1..number).reduce(:+)
end

def compute_product(number)
  (1..number).reduce(:*)
end

def valid_operation?(input)
  %w(s p).include?(input.downcase)
end

def valid_integer?(input)
  Integer(input) rescue false
end

def valid_input?(input, input_type)
  case input_type
  when 'operation' then valid_operation?(input)
  when 'integer'   then valid_integer?(input)
  end
end

def retrieve_input(input_type)
  input = ''
  loop do
    input = gets.chomp
    break if valid_input?(input, input_type)
    display_error(input_type)
  end
  input
end

def display_error(input_type)
  case input_type
  when 'integer' then puts "Invalid number, please enter an integer larger than 0"
  when 'operation' then puts "Invalid operation, please enter 's' for sum or 'p' for product"
  end
end

puts "Please enter an integer greater than 0"
number = retrieve_input('integer')

puts "Enter 's' to compute the sum, 'p' to compute the product."
operation = retrieve_input('operation')

case operation
when 's'
  puts "The sum of integers between 1 and #{number} is #{compute_sum(number.to_i)}"
when 'p'
  puts "The product of integers between 1 and #{number} is #{compute_product(number.to_i)}"
end
