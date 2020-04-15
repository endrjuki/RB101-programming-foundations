# Write a method that takes an array of strings,
# and returns an array of the same string values, except with the vowels (a, e, i, o, u) removed.

# Input
# - array
# - contains strings
# - each element is a string, can be multiple elements

# Output
# - array (different object)
# - contains same string values, but remove vowels
# - (a, e, i, o, u)

# Algorithm
# - iterte over input array
# - map over the array with gsub
#   - /aeiou/i regex
# - return the array
VOWELS = %w(a e i o u)

def remove_vowels(array_of_strings)
  array_of_strings.map {|string| string.gsub(/[aeiou]/i, '')}
end

# ls way
def remove_vowels(array_of_strings)
  array_of_strings.map {|string| string.delete('aeiouAEIOU')}
end
abracadabra
abba



remove_vowels(%w(abcdefghijklmnopqrstuvwxyz)) == %w(bcdfghjklmnpqrstvwxyz)
remove_vowels(%w(green YELLOW black white)) == %w(grn YLLW blck wht)
remove_vowels(%w(ABC AEIOU XYZ)) == ['BC', '', 'XYZ']
