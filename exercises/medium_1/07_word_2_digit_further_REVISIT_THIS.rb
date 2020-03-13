# Further Exploration
# There are many ways to solve this problem and different varieties of it.
# Suppose, for instance, that we also want to replace uppercase and capitalized words.
/\b#{key}\b/i

# Can you change your solution this so the spaces between consecutive numbers are removed?
def is_number?(object)
  object.to_i.to_s == object || object.to_f.to_s == object
end

def remove_spaces(str)
  result = ''
  idx = 0
  while idx < str.size
    if str[idx] == ' ' && is_number?(str[idx - 1]) && is_number?(str[idx + 1])
      result << ''
    else
      result << str[idx]
    end
    idx += 1
  end
  result
end

# Suppose the string already contains two or more space separated numbers (not words);
# can you leave those spaces alone, while removing any spaces between numbers that you create?
def remove_spaces(str)
  result = ''
  idx = 0
  while idx < str.size
    if (str[idx] == ' ' && is_number?(str[idx - 1]) && is_number?(str[idx + 1])) && !is_number?(str[idx + 2])
      result << ''
    else
      result << str[idx]
    end
    idx += 1
  end
  result
end

# What about dealing with phone numbers? Is there any easy way to format the result to account for phone numbers? For our purposes, assume that any 10 digit number is a phone number, and that the proper format should be "(123) 456-7890"










WORD_TO_DIGIT = {
                 'zero' => '0', 'one' => '1', 'two' => '2', 'three' => '3',
                 'four' => '4', 'five' => '5', 'six' => '6', 'seven' => '7',
                 'eight' => '8', 'nine' => '9'
               }

                 def word_to_digit(string)
                   WORD_TO_DIGIT.each do |key, value|
                     string.gsub!(/\b#{key}\b/i, value) # \b limits the operation to complete words, not substrings
                   end
                   string
                 end

word_to_digit('Please call me at five five five one two three four. Thanks.') == 'Please call me at 5 5 5 1 2 3 4. Thanks.'
