# Write a method that returns true if its integer argument is palindromic,
# false otherwise. A palindromic number reads the same forwards and backwards.
# Examples

def palindromic_number?(int)
  int.to_s.reverse == int.to_s
end

palindromic_number?(34543) == true
palindromic_number?(123210) == false
palindromic_number?(22) == true
palindromic_number?(5) == true

# Further Exploration
# Suppose your number begins with one or more 0s.
# Will your method still work? Why or why not? Is there any way to address this?

