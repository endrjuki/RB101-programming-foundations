# Write a method that takes a single String argument and returns a new string
# that contains the original value of the argument
# with the first character of every word capitalized and all other letters lowercase.

# You may assume that words are any sequence of non-blank characters.

# Input
# - String
#   - contains words
#   - word can be considered as a sequence of non-blank characters
#     which basically means sequence of characters delimeted by empty space

# Output
# - String (different object)
# - first letter of every word capitalized
# - rest of letters lowercase
# - WORDS START WITH ALPHABETICAL CHARACTERS

# Algorithm
# - split into array of substrings(words)
# - downcase and capitalize every word that starts with /[a-zA-Z]/ regex

def word_cap(string)
  string.split.map do |word|
    if word[0] =~ /[a-zA-Z]/ # REGEX is unecessary here too, check ls solution
      word.downcase.capitalize # DOWNCASE IS UNECESSARY Here
    else
      word
    end
  end
  .join(' ')
end

# ls method, more clever

def word_cap(string)
  string.split.map do |word|
    word.capitalize
  end
  .join(' ')
end

# more succinitly
def word_cap(string)
  string.split.map(&:capitalize).join(' ')
end

# Further Explorations: manage without String#capitalize
def word_cap(string)
  string.split.map do |word|
    if word[0] =~ /[a-zA-Z]/                              # the regex was entirely unecessary, check what upcase does to string numbers, string special chars etc.
      char_array = word.downcase.split('')
      char_array[0].upcase!
      char_array.join
    else
      word
    end
  end
  .join(' ')
end

# another one
def word_cap(string)
  string.split.map do |word|
    word[0].upcase + word[1, word.size - 1].downcase
  end
  .join(' ')
end

# rewriting previous with shorter var name
def word_cap(str)
  str.split.map{ |w| w[0].upcase + w[1, str.size - 1].downcase }.join(' ')
end





word_cap('four score and seven') == 'Four Score And Seven'
word_cap('the javaScript language') == 'The Javascript Language'
word_cap('this is a "quoted" word') == 'This Is A "quoted" Word'
