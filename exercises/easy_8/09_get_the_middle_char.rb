# Write a method that takes a non-empty string argument,
# and returns the middle character or characters of the argument.
# If the argument has an odd length, you should return exactly one character.
# If the argument has an even length, you should return exactly two characters.

# Input
# - String
#   - not empty
# Output
# - String
#   - character or two characters, depends on length of the string:
#     if even - 2, if odd - 1.

# Algorithm
# - determine the length of the string
# - if even, index of 1st return char: length / 2 - 1
#   2nd : length / 2
# - concat first and second string and return the resulting string
# - if odd, return char with index str.size / 2 -1
# -
def center_of(string)
  string_length = string.size
  if string_length.odd?
    string[(string_length / 2.0).ceil - 1]
  else
    string[string_length / 2 - 1] + string[string_length / 2] # this line is really opposite of clever
  end
end

# ls way

def center_of(string)
  center_index = string.size / 2
  if string_size.odd?
    string[center_index]
  else
    string[center_index - 1, 2] # this is what I should've done
  end
end
