# Given a string of words separated by spaces,
# write a method that takes this string of words and returns a string
# in which the first and last letters of every word are swapped.

# You may assume that every word contains at least one letter,
# and that the string will always contain at least one word.
# You may also assume that each string contains nothing but words and spaces

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

# Input
# - String
# - will always contain at least one word
# - word will always contain at least one letter
# - contains nothing but words and spaces

# Output
# - String (different object)
# - contains the the words from input string
# - first and last letters of every word are swapped

# Data Structure
# - Array for transforming strings
# - String for Output

# Algorithm
# - split input string over Array
# - iterate over array
#   - swap the first letter with the last letter of each element
# - join the array using ' ' as delimiter
# - return array


def swap(str)
  result = []
  str.split.each do |word|
    word_copy = word.dup
    word_copy[0] = word[-1]
    word_copy[-1] = word[0]
    result << word_copy
  end
  result.join(' ')
  end

# paralel assignment way
def swap(str)
  arr = str.split.map do |word|
    word[0], word[-1] = word[-1], word[0]
    word
  end
  arr.join (' ')
end

 LS way

def swap_first_last_characters(word)
  word[0], word[-1] = word[-1], word[0]
  word
end



def swap(words)
  result = words.split.map do |word|
    swap_first_last_characters(word)
  end
  result.join(' ')
end
