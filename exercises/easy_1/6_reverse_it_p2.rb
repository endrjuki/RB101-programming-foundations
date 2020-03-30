# Write a method that takes one argument,
# a string containing one or more words,
# and returns the given string with words that contain five or more characters reversed.
# Each string will consist of only letters and spaces.
# Spaces should be included only when more than one word is present.

# Input:
#  -string
# -containts one or more words
# -each string consist of only letters and spaces
# Output:
#  -string, different object?
#Rules:
#  -returns a given string with words that contain over 5 characters reversed
#  -spaces should be included when only more than one word is present?
#    -does that imply that I have to trim the spaces if there is only one word in the string?
#Algorithm:
#  -split str into array of words
#  -map over array
#    -if current word has 5 or more characters, reverse word
#    -if current word has > 4 characters, keep the word as is.
#  -join the array of words into a string with one space between each word


def reverse_words(str)
  result = str.split.map do |word|
    word.reverse! if word.size >= 5
    word
  end
  result.join(' ')
end

# refactor
def reverse_words(str)
  str.split.map { |word| word.size >= 5 ? word.reverse : word }.join(' ')
end

# Examples/Test Cases:
puts reverse_words('Professional')          # => lanoisseforP
puts reverse_words('Walk around the block') # => Walk dnuora the kcolb
puts reverse_words('Launch School')         # => hcnuaL loohcS
