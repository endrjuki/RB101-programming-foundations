# Write a method that returns a list of all substrings of a string
# that start at the beginning of the original string.
# The return value should be arranged in order from shortest to longest substring.

# Input
# - string

# Output
# - array of substrings

# - initialize result
# - initalize sub_string
# - loop through char Array
# - append char to sub_string
# - appen sub_string to results
#   - loop again through the array
#   - append char to subarray if current element index is > outer loop current
#     element index
#   - append sub_string to array

# from scratch
def substrings(str)
  result = []
  sub_string = ''
  char_array = str.chars
  char_array.each_with_index do |char_outer, idx_outer |
    sub_string += char_outer
    result << sub_string

    char_array.each_with_index do |char_inner, idx_inner|
      if idx_inner > idx_outer
        sub_string += char_inner
        result << sub_string
      end
    end
    sub_string = ''
  end
  result
end

# using the method from before
def substrings_at_start(str)
  result = []
  sub_string = ''
  str.chars.each do |char|
    sub_string += char
    result << sub_string
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

# alt904
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
