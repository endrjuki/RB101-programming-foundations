# Build a program that asks a user for the length and width of a room
# in meters and then displays the area of the room in both square meters and square feet.
# Note: 1 square meter == 10.7639 square feet
# Do not worry about validating the input at this time.
# Example run:
# Enter the length of the room in meters:
# 10
# Enter the width of the room in meters:
# 7
# The area of the room is 70.0 square meters (753.47 square feet).

# Input
#   integer:
#      -one for width
#      -one for length
#      -no validation necessary
# Output
#   string:
#     -contains room area in square meters and feet
# Algorithm
#   -program outputs a message requesting length of the room
#   -retrieve the input from user and save it to a variable `length`
#     -convert `length` to integer
#   -program outputs a message requesting width of the room
#   -retrieve the input from user and save it to a variable `width`
#     -convert to integer
#   - calculate square meters and asign the value to square_meters
#   - multiply square_meters by 10.7639 and assign the value to square_feet
#   - output a string that contains interpolated square_meters and square_feet

SQMETERS_TO_SQFEET = 10.7639 # this is a good practice if any time there is a number
                             # whose meaning is not obvious

puts "Enter the length of the room in meters:"
length = gets.chomp.to_f

puts "Enter the width of the room in meters:"
width = gets.chomp.to_f

square_meters = (length * width).round(2)
square_feet = (square_meters * SQMETERS_TO_SQFEET).round(2)

puts "The area of the room is #{square_meters} square meters (#{square_feet} square feet)."
