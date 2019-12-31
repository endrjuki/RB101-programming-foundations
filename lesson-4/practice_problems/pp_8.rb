# How does take work?
# Is it destructive? How can we find out?

arr = [1, 2, 3, 4, 5]
arr.take(2)

# take(n) returns first n elements of the array
# it is not destructive
# can find out by reading documentation and by trying it out in irb
# arr.take(2) => [1, 2]
# arr => [1, 2, 3, 4, 5]
