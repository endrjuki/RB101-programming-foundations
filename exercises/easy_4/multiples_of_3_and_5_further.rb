# Write a method that searches for all multiples of
# 3 or 5 that lie between 1 and some other number,
# and then computes the sum of those multiples.
# For instance, if the supplied number is 20,
# the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 + 15 + 18 + 20).

# You may assume that the number passed in is an integer greater than 1.

# Algorithm
# - retrieve a number(integer greater than 0) from user
# - iterate through number range (1..number) with select
#   - if current number is devisible by 3 or 5, select it
#   - after select is done iteration, assign the value to a variable `result`
#   - sum the elements in the array result and return the value (with reduce?)

def multisum(num)
  result = (1..num).select do |num|
             num % 3 == 0 || num % 5 == 0
  end
  result.sum
end

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

# using inject/reduce

def multisum(num)
  (1..num).select {|n| num % 3 == 0 || num % 5 == 0}.reduce(:+)
end



