# Given a string that consists of some words and an assortment of non-alphabetic characters,
# write a method that returns that string with all of the non-alphabetic
# characters replaced by spaces.
# If one or more non-alphabetic characters occur in a row,
# you should only have one space in the result (the result should never have consecutive spaces).

# Input
# - string
# - contains words and non-alphabetic characters

# Output
# - string (different object)
# - contains only alphabetic characters
# - non-alphabetic characters replaces by spaces
# - the result should never have consecutive spaces

# Algorithm
# - substitute all the non alphabetic characters with spaces and assign to a var
#   - gsub(/[^a-zA-Z ]/i
# - loop through the string with a counter
#   - break if counter is equal to string.size
#   - if current element == ' ' & next element == ' '
#     - gsub current element with ''

def replace_non_alphabetic_with_space(str)
  str.gsub(/[^a-zA-Z ]/i, ' ')
end

def cleanup(str)
  str = replace_non_alphabetic_with_space(str)
  idx = 0
  str_size = str.size
  loop do
    break if idx == str_size
    idx += 1

    if str[idx] == ' ' && str[idx - 1] == ' '
      str[idx - 1] = ''
      str_size -= 1
      idx -= 1
    end
  end
  str
end


# ls way
ALPHABET = Array(a..z)

def cleanup(text)
  clean_chars = []

  text.chars.each do |char|
    if ALPHABET.include?(char)
      clean_chars << char
    else
      clean_chars << ' ' unless clean_chars.last == ' '
    end
  end

  clean_chars.join
end

# /[^a-z]/i is a regular expression that matches any character that is not an uppercase or lowercase letter.
# The /i part makes this expression case insensitive.
# gsub replaces all characters in text that match the regular expression in the 1st argument
# with the value in the 2nd argument.

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end

def cleanup(text)
  text.gsub(/[^a-z]/i, ' ').squeeze(' ')
end











cleanup("---what's my +*& line?") == ' what s my line '










cleanup("---what's my +*& line?") == ' what s my line '
