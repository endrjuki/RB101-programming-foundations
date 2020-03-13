# Write a method that returns the next to last word in the String passed to it as an argument.
# Words are any sequence of non-blank characters.
# You may assume that the input String will always contain at least two words.

def penultimate(str)
  arr = str.split[-2]
end

penultimate('last word') == 'last'
penultimate('Launch School is great!') == 'is'

# Further Exploration

# Our solution ignored a couple of edge cases because we explicitly stated
# that you didn't have to handle them: strings that contain just one word,
# and strings that contain no words.
# Suppose we need a method that retrieves the middle word of a phrase/sentence.
# What edge cases need to be considered?
# How would you handle those edge cases without ignoring them?

# Write a method that returns the middle word of a phrase or sentence.
# It should handle all of the edge cases you thought of.

# Edge cases
# - string that has no words
# - string that contains one word
# - string that contains even number of words? Which one do I return? floor or ceil

def return_middle_word(str)
  arr = str.split
  if arr.size == 0
    nil
  elsif (arr.size) % 2 == 0
    'array length even, there is no middle'
  elsif arr.size = 1
    arr[0]
  else
    arr[(arr.size / 2).ceil]
end
