# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.
# Examples
def palindromic_wrapper(int)
def palindromic_number?(int)
  int.to_s.reverse == int.to_s
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

#ls way, reusing method from previous exercise
def palindromic_number?(number)
  number = number.to_s
  palindrome?(number.to_s)
end

