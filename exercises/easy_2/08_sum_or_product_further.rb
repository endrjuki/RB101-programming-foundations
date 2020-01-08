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

def valid_operation?(str)
  %w(s p).include?(str)
end

def valid_integer?(int)
  int.to_i.to_s == int && int.to_i >= 1
end

def compute_sum(number)
  (1..number).reduce do |sum, number|
    sum + number
  end
end

def compute_product(number)
  (1..number).reduce do |product, number|
    product * number
  end
end

def valid_input?(input, input_type)
  case input_type
  when 'operation'
    valid_operation?(input)
  when 'number'
    valid_integer?(input)
  end
end

def retrieve_input(input_type)
  input = ''
  loop do
    input = gets.chomp
    break if valid_input?(input, input_type)
    puts "invalid input! please try again."
  end
  input
end


puts ">> Please enter an integer greater than 0:"
number = retrieve_input('number')

puts ">> Enter 's' to compute the sum, 'p' to compute the product."
operation = retrieve_input('operation')

number = number.to_i

case operation
when 's'
  result = compute_sum(number)
  puts "The sum of the integers between 1 and #{number} is #{result}"
when 'p'
  result = compute_product(number)
  puts "the product of the integers between 1 and #{number} is #{result}"
end
