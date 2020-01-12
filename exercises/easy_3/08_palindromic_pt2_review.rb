# Write another method that returns true
# if the string passed as an argument is a palindrome,
# false otherwise. This time, however, your method should be case-insensitive,
# and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome? method
# you wrote in the previous exercise.

def palindrome?(string)
  string.downcase == string.downcase.reverse
end

def real_palindrome?(str)
  alpha_numeric = []
  alpha_numeric << str.downcase.chars.select do |char|
      ('a'..'z').include?(char) || (0..9).include?(char)
  end
  palindrome?(alpha_numeric.join)
end

# ls way
def real_palindrome?(str)
  string = string.downcase.delete('^a-z0-9') # REVIEW DELETE AND COUNT, because its closely related to delete
  palindrome?(string)
end





