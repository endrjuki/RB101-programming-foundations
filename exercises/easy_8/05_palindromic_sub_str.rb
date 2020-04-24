# Write a method that returns a list of all substrings of a string that are palindromic.
# That is, each substring must consist of the same sequence of characters forwards as it does backwards.
# The return value should be arranged in the same sequence as the substrings appear in the string.
# Duplicate palindromes should be included multiple times.

# You may (and should) use the substrings method you wrote in the previous exercise.

# For the purposes of this exercise, you should consider all characters
# and pay attention to case; that is, "AbcbA" is a palindrome,
# but neither "Abcba" nor "Abc-bA" are. In addition, assume that single characters are not palindromes.

# init result array
# split string into array of substrings
# iterate through array and select a sub string if it is a palindrome


# method from previous exercise
def substrings_at_start(str)
  result = []
  0.upto(str.size - 1) do |index|
    result << str[0..index]
  end
  result
end

def substrings(str)
  result = []
  0.upto(str.size - 1) do |index|
    result.concat(substrings_at_start(str[index..-1]))
  end
  result
end

def is_palindrome?(str)
  str == str.reverse && str.size != 1
end

def palindromes(str)
  substrings(str).select {|sub_string| is_palindrome?(sub_string)}
end


# Examples / Test Cases
palindromes('abcd') == []
palindromes('madam') == ['madam', 'ada']
palindromes('hello-madam-did-madam-goodbye') == [
  'll', '-madam-', '-madam-did-madam-', 'madam', 'madam-did-madam', 'ada',
  'adam-did-mada', 'dam-did-mad', 'am-did-ma', 'm-did-m', '-did-', 'did',
  '-madam-', 'madam', 'ada', 'oo'
]
palindromes('knitting cassettes') == [
  'nittin', 'itti', 'tt', 'ss', 'settes', 'ette', 'tt'
]


# another attempt at this exercise
def substrings_at_start(string)
  result = []
  string.chars.each_with_index { |char, idx| result << string[0..idx] }

  result
end

def substrings(string)
  result = []  
  0.upto(string.length - 1) do |idx|
    result << substrings_at_start(string[idx..-1])
  end 
   
  result.flatten.sort
end

def is_palindrome?(str)
  return false if str.length == 1
  str.reverse == str
end

def palindromes(string)
  substrings = substrings(string)
  substrings.select { |string| is_palindrome?(string) }
end
