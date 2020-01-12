# Write another method that returns true
# if the string passed as an argument is a palindrome,
# false otherwise. This time, however, your method should be case-insensitive,
# and it should ignore all non-alphanumeric characters.
# If you wish, you may simplify things by calling the palindrome? method
# you wrote in the previous exercise.

def real_palindrome?(str)
  alpha_numeric = []
  alpha_numeric << str.downcase.chars.select do |char|
      ('a'..'z').include?(char) || (0..9).include?(char)
  end
  alpha_numeric
end





