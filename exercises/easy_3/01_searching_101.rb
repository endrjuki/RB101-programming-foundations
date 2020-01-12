# Write a program that solicits 6 numbers from the user,
# then prints a message that describes whether or not
# the 6th number appears amongst the first 5 numbers.

# Example
#==> Enter the 1st number:
#25
#==> Enter the 2nd number:
#15
#==> Enter the 3rd number:
#20
#==> Enter the 4th number:
#17
#==> Enter the 5th number:
#23
#==> Enter the last number:
#17
#The number 17 appears in [25, 15, 20, 17, 23].

#==> Enter the 1st number:
#25
#==> Enter the 2nd number:
#15
#==> Enter the 3rd number:
#20
#==> Enter the 4th number:
#17
#==> Enter the 5th number:
#23
#==> Enter the last number:
#18
#The number 18 does not appear in [25, 15, 20, 17, 23].

# input
#   integer:
#     -number?: integer?, string?, float? does it matter?
# output
#   string:
#
# Rules
#   -request player to enter 1st number and append it to an array
#   ...
#   -request player to enter 5th number and append it to an array
#   -request player to enter last number
#   -check if it appears in the number array
#   -if it appears, print a message including the last number, array and confirmation that it appears
#   -if it doesn't, the same, but signify that it doesnt appear.

# Algorithm
#   -initialize an empty array
#   -retrieve input from user: 1st number
#     -append it to an array
#   ...
#   -retrieve input from user: 5th number
#     -append it to an array
#   -retrieve input from user: last number
#   -check if array includes last number
#   

number_array = []

puts "==> Enter the 1st number:"
number_array << gets.chomp.to_i

puts "==> Enter the 2nd number:"
number_array << gets.chomp.to_i

puts "==> Enter the 3rd number:"
number_array << gets.chomp.to_i

puts "==> Enter the 4th number:"
number_array << gets.chomp.to_i

puts "==> Enter the 5th number:"
number_array << gets.chomp.to_i

puts "==> Enter the last number:"
last_number = gets.chomp.to_i

if number_array.include?(last_number)
  puts "The number #{last_number} appears in #{number_array}."
else
  puts "The number #{last_number} does not appear #{number_array}."
end
