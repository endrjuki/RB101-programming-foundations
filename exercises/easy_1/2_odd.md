Write a method that takes one integer argument,
which may be positive, negative, or zero.
This method returns true if the number's absolute value is odd.
You may assume that the argument is a valid integer value.

Input: Integer
Output: Boolean value

Rules:
  Explicit requirements:
    - method takes one integer argument
    - integer may be positive, negative, or zero
    - method returns true if the numbers absolute value is odd
    - you may assume that argument is a valid integer value
    - you are not allowed to use `#odd?` or `#even?`!
  
  Implicit requirements:
    - Odd integer is an integer that cannot be devided by 2 without remainder.

Test Cases:
  puts is_odd?(2)    # => false
  puts is_odd?(5)    # => true
  puts is_odd?(-17)  # => true
  puts is_odd?(-8)   # => false
  puts is_odd?(0)    # => false
  puts is_odd?(7)    # => true

Algorithm:
  -Initialize a method `integer_odd?` that takes 1 argument: integer
  -return true if integer is odd:
    - if integer %  2 != 0, return true



