# Write a method that takes two strings as arguments,
# determines the longest of the two strings,
# and then returns the result of concatenating the shorter string,
# the longer string, and the shorter string once again.
# You may assume that the strings are of different lengths.

# Algorithm
# - Compare string sizes
# - assign the longest to variable `long`, other to `short`
# - concat in pattern short-long-short

def short_long_short(first, second)
  if first.size > second.size
    second + first + second
  else
    first + second + first
  end
end

# Test Cases
short_long_short('abc', 'defgh') == "abcdefghabc"
short_long_short('abcde', 'fgh') == "fghabcdefgh"
short_long_short('', 'xyz') == "xyz"

# ls sorting array solution
def short_long_short(string1, string2)
  arr = [string1, string2].sort_by { |el| el.length }
  arr.first + arr.last + arr.first
end



