# Write a method that takes one argument, an array containing integers,
# and returns the average of all numbers in the array.
# The array will never be empty and the numbers will always be positive integers.

#Input:
#  array
#    -contains integers
#    -will never be empty
#    -always contains positive integers

#Output:
#  integer or string
#    -average of all numbers in the array

#Algorithm:
#  -define a method `average` that takes one argument: `arr`
#  -initialize variable `sum` with value `0`
#  -iterate through array, sum each element with variable `sum`
#  -divie sum by the size of the array and return the value

def average(arr)
  sum = 0
  arr.each {|element| sum += element}
  sum / arr.size
end

#ls way
def average(arr)
  sum = arr.reduce {|sum, number| sum + number}
  sum / arr.size
end
# also can use symbol like so
def average(arr)
  sum = arr.reduce(:+)
  sum / arr.size
end

# Further exploration: dealing with floats
def average(arr)
  sum = arr.reduce(:+)
  sum / arr.size.to_f
end


