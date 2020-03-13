# this method is supposed to return an array of:
# - all values squared if there are more than 1 value in the input array
# - value * 3, if there is only 1 value in the input array
# Find the bug, explain it, fix it.

def my_method(array)
  if array.empty?
    []
  elsif
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end

# This method returns nil, unless the array is empty, in which case it returns
# an empty array how its supposed to
# The issue here is with the elsif branch, the elsif branch treats (array.map { |value| value * value} )
# as conditional, which will always evaluate to true with any kind of input array.
# after that elsif branch is going to be executed, but the elsif branch is empty, therefore method will return nil.
# if there is no code in the branch, that is equivalent of nil


def my_method(array)
  if array.empty?
    []
  elsif array.length > 1
    array.map do |value|
      value * value
    end
  else
    [7 * array.first]
  end
end
