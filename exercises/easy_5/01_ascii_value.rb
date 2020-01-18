# Write a method that determines and returns the ASCII string value
# of a string that is passed in as an argument.
# The ASCII string value is the sum of the ASCII values of every character
# in the string. (You may use String#ord to determine the ASCII value of a character.)

# Algorithm
# - split string into char array
# - iterate through array and sum the values
# - return array

def ascii_value(str)
  return 0 if str.empty?
  str.chars.map {|val| val.ord}.reduce(:+)
end



ascii_value('Four score') == 984
ascii_value('Launch School') == 1251
ascii_value('a') == 97
ascii_value('') == 0

# Further exploration

# There is an Integer method such that:
# char.ord.mystery == char
# where mystery is our mystery method.
# Can you determine what method name should be used in place of mystery?
# - String#chr method
# What happens if you try this with a longer string instead of a single character?
# - String#ord returns the ascii value of first character, chr returns the character
#   corresponding to that ascii value.
