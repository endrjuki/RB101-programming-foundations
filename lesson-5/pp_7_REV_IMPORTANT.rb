# Given this code, what would be the final values of a and b?
# Try to work this out without running the code.

a = 2
b = [5, 8]
arr = [a, b]


arr[0] += 2
arr[1][0] -= a

a == 2
b == [3, 8]

# `a` didn't change because we are not referencing `a` at any point, we are modifying
# the array not a.
# arr[0] references object at index 0, and += 2 assigns a new object at index 0,
# so instead of `a` array[0] now references `4`
# arr # => [4, [3, 8]]

# the value of b changed, because b is an array and we are modifying that array by
# assigning a new value at index 0
