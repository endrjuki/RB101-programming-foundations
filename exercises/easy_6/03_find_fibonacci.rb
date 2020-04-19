# Write a method that calculates and returns the index of the first Fibonacci
# number that has the number of digits specified as an argument.
#  (The first Fibonacci number has index 1.)

# Input
# - integer
# - number of digits

# Output
# - integer
# - index of first fib number that has the amount of digits provided by input

# Rules
# - Fibonacci
#   - first number = 1
#   - n1 = 0
#   - n2 = 1
#   - n3 = n1+n2
#   - n4 = n2 + n3
#   - n5 = n4 + n3
#   --------------------------------
#   - a = 0
#   - b = 1
#   - temp = a
#   - a = b
#   - b = temp + a

# Algorithm
# - set index to 1
# - start computing the fibonaci sequence
#   - break the loop if current number has equal amount of digits to input
#   - increment index otherwise
# - return index

def find_fibonacci_index_by_length(number_of_digits)
  a = 0
  b = 1
  counter = 2
  loop do
    temp = a
    a = b
    b = temp + a
    break if b.to_s.size == number_of_digits
    counter += 1
  end
  counter
end

# revisiting the exercise
# counter = 2
# n1 = 1
# n2 = 1
# n2 += n1      =2
# counter = 3
# n1 = 1
# n2 = 2
# n2, n1 = (n1+n2), n2

def fibonacci(n)
  n1 = 1
  n2 = 1
  counter = 2
  loop do
    n2, n1 = (n1 + n2), n2
    counter += 1
    return counter if n2.to_s.length == n
  end
end


find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847
You may assume that the argument is always greater than or equal to 2.
