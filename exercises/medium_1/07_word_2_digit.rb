# Word to Digit
# Write a method that takes a sentence string as input,
# and returns the same string with any sequence of the words
# 'zero', 'one', 'two', 'three', 'four', 'five', 'six', 'seven', 'eight', 'nine'
# converted to a string of digits.

# Input
# - String
# Output
# - String
# Algorithm
# - split string into subarr of words
# - map over the word array
#   - check each word against hash dictionary
#   - if word matches to one of the keys, replace word
# - joint the string back together
WORD_TO_DIGIT = {
                 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
                 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
                 'eight' => '8', 'nine' => '9'
               }

                 def word_to_digit(string)
                   WORD_TO_DIGIT.each do |key, value|
                     string.gsub!(/\b#{key}\b/, value) # \b limits the operation to complete words, not substrings
                   end
                   string
                 end

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
