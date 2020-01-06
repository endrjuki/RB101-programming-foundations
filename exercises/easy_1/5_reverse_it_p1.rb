# Write a method that takes one argument,
# a string, and returns a new string with the words in reverse order.

# -input:
#  -string
#  -words are seperated by spaces?
#  -going to be no punctuation present?
#  -can we assume that input is going to be string of words?
# -output:
#  -string (different object)
#  -words of original string in reverse order
# -rules:
# -algorithm:
# initialize an array called `result`
# split original string into array called 'words'
# itterate through 'words' in reverse order
# append each word to `results` array
# join the array together in a string

def reverse_sentence(str)
  results = []
  str.split.reverse_each {|word| results << word}
  results.join(' ')
end

# Examples/test cases:
puts reverse_sentence('') == ''
puts reverse_sentence('Hello World') == 'World Hello'
puts reverse_sentence('Reverse these words') == 'words these Reverse'

# LS way
def reverse_sentence
  str.split.reverse.join('')
end
