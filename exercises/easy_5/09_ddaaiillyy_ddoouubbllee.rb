# Write a method that takes a string argument and returns a new string
# that contains the value of the original string with all
# consecutive duplicate characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.

# Write a method that takes a string argument and returns a new string
# that contains the value of the original string with all consecutive duplicate
# characters collapsed into a single character.
# You may not use String#squeeze or String#squeeze!.

# Input
# - string

# Output
# - string (different object)
# - contains value of original string with all consecutive double characters
#   removed

# Algorithm
# - initialize an empty array: clean_chars
# - split input string into chars
# - iterate through char Array
#   - append char to clean_chars array, unless last element of clean_chars
#     is equal to the current element in the iteration
# - join the clean_chars into string
# - return the string

def crunch(str)
  clean_chars = []
  str.chars.each {|char| clean_chars << char unless clean_chars.last == char}
  clean_chars.join
end

crunch('ddaaiillyy ddoouubbllee') == 'daily double'
crunch('4444abcabccba') == '4abcabcba'
crunch('ggggggggggggggg') == 'g'
crunch('a') == 'a'
crunch('') == ''

# ls way
def crunch(str)
  crunch_text = ''
  index = 0

  while index <= str.size - 1
    crunch_text << str[index] unless str[index] == str[index + 1]
    index += 1
  end
  crunch_text
end
