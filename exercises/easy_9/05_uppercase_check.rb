# Write a method that takes a string argument, and returns true
# if all of the alphabetic characters inside the string are uppercase,
# false otherwise. Characters that are not alphabetic should be ignored.

# Algorithm
# - split string into char arr
# - select chars that abide by /a-z/i
# - return true if ALL chars abide by /A-Z/

def uppercase?(string)
  string.scan(/[a-z]/i).all? {|char| char =~ /[A-Z]/}
end

uppercase?('t') == false
uppercase?('T') == true
uppercase?('Four Score') == false
uppercase?('FOUR SCORE') == true
uppercase?('4SCORE!') == true
uppercase?('') == true

# ls way
# realize that this condition is only true if all alphabetic characters are
# upper case. non alphabetic characters don't have cases...
def uppercase(string)
  string == string.upcase
end
