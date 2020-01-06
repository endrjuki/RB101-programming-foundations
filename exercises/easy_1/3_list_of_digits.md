Write a method that takes one argument,
a positive integer,
and returns a list of the digits in the number.

Input: string
Output: array

Rules:
  Explicit Requirements:
    -method takes one argument - a positive integer
    -method returns a list of the digits in the number
  Implicit Requirements:
    -method returns an array

Test Cases:
  ```ruby
  puts digit_list(12345) == [1, 2, 3, 4, 5]     # => true
  puts digit_list(7) == [7]                     # => true
  puts digit_list(375290) == [3, 7, 5, 2, 9, 0] # => true
  puts digit_list(444) == [4, 4, 4]             # => true
```

Algorithm:
  -define a method `list_numbers` that takes argument `int`
  -inside the method, initialize new variable `str` and assign it to `int.to_s`
  -then call method `split` on return lue of previous list_numbers
  -iterate through the return value of previous line with `map` with a block
  -apply a parameter that turns every element into a integer inside of the block
  