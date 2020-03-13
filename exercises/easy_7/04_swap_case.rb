# Write a method that takes a string as an argument and returns a new string
# in which every uppercase letter is replaced by its lowercase version,
# and every lowercase letter by its uppercase version.
# All other characters should be unchanged.

# You may not use String#swapcase; write your own version of this method.

# Input
# - String

# Output
# - String (diff object)

# Rules
# - swap cases for all alphabetical characters
# - all other characters left unchanged

# Algorithm
# - retrieve character array from input string
# - iterate over char array and map the values to new array
#   - if char belongs to lowercase letters: upcase the char
#   - if char belong to uppercase letters: downcase the char
#   - if char belongs to neither: return char
# - join the array into string.

def swapcase(string)
  string.chars.map do |char|
    if char =~ /[a-z]/
      char.upcase
    elsif char =~ /[A-Z]/
      char.downcase
    else
      char
    end
  end
  .join('')
end



swapcase('CamelCase') == 'cAMELcASE'
swapcase('Tonight on XYZ-TV') == 'tONIGHT ON xyz-tv'
