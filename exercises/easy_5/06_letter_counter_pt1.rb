# Write a method that takes a string with one or more space separated words
# and returns a hash that shows the number of words of different sizes.

# Words consist of any string of characters that do not include a space.

# Input
# - string
# - contains one or more words
# - words are seperated by space
# - words consist of any string of characters that do not include spaces

# Output
# - Hash
# - key: size of the string
# - value: how many words have that key value

# Algorithm
# - split string into array of substrings, use space as delimiter
# - initalize empty result hash
# - iterate over the array of substrings
#   - check if result hash has current element size as key?
#     - if yes, increment value of the corresponding value by 1
#     - if no, add the key(current element size) to result hash with value = 1
# - return hash

def word_sizes(str)
  str = str.gsub(/[^a-zA-Z]/s, '')
  result = {}
  str.split.each do |word|
    if result.has_key?(word.size)
      result[word.size] += 1
    else
      result[word.size] = 1
    end
  end
  result
end

# ls way
def word_sizes(word_string)
  counts = Hash.new(0)
  words_string.split.each do |word|
    counts[word.size] += 1
  end
  counts
end

# Hash.new(0) <- default value form of initalizing a hash
# this forces any references to non-existing keys to return 0
# if we had initialized hash as counts = {}
# line 42 would throw an exception, because if element doesn't exist,
# counts[word.size] would return nil, and nil cannot be added to 1

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# revisiting this exercise
# Input
# - string
#   - contains one or more words seperated by a space

# Output
# - hash
#   - key represents individual word size
#   - value represents the number of occurances of word with certain size

# Mental model
# - split the string into word array
# - iterate over the words
#   - add the word length as a key
#   - increment the value for this key by 1

def word_sizes(string)
  word_count = Hash.new(0)
  string.split.each { |word| word_count[word.length] += 1 }
  word_count  
end
