# Write a method that returns a list of all substrings of a string
# that start at the beginning of the original string.
# The return value should be arranged in order from shortest to longest substring.

# Input
# - string

# Output
# - array of substrings

# Algorithm
# - initalize result array
# - initialize empty string var sub_string
# - split str into char array
# - iterate through array
#   - on each iteration += current element to sub_string
#   - on each iteration append sub_string to result array
# - return result_array

def substrings_at_start(str)
  result = []
  sub_string = ''
  str.chars.each do |char|
    sub_string += char
    result << sub_string
  end
  result
end

substrings_at_start('abc') == ['a', 'ab', 'abc']
substrings_at_start('a') == ['a']
substrings_at_start('xyzzy') == ['x', 'xy', 'xyz', 'xyzz', 'xyzzy']

# with upto

def substrings_at_start(string)
  result = []
  0.upto(string.size - 1) do |index|
    result << string[0..index]
  end
  result
end
