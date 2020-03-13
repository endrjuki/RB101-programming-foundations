# Write a method that takes a string, and then returns a hash
# that contains 3 entries:
# one represents the number of characters in the string that are lowercase letters,
# one the number of characters that are uppercase letters,
# and one the number of characters that are neither.

# Input
# -string

# Output
# - Hash
#   - 3 keys : :lowercase, :uppercase, :neither
#   - 3 values: count of each character group

# Algorithm
# - initalize hash result with the provided keys with values set to 0
# - acquire character array from input string
# - itterate through array and match each character against: lowercase, uppercase, neither using regex
#   -if element matches a-z: increment lowercase value
#   -if element matches A-Z: increment uppercase value
#   -if element matches ^a-zA-Z: increment neither value

def letter_case_count(string)
  result = {lowercase: 0, uppercase: 0, neither: 0}
  string.chars.each do |char|
    result[:lowercase] += 1 if char.match?(/[a-z]/)
    result[:uppercase] += 1 if char.match?(/[A-Z]/)
    result[:neither] += 1 if char.match?(/[^a-zA-Z]/)
  end
  result
end

# ls solution, I like this one better

def letter_case_count(string)
  counts = {}
  characters = string.char
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/ }
  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/ }
  counts[:neither] = characters.count { |char| char =~ /[^a-zA-Z]/}
  counts  
end

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }
