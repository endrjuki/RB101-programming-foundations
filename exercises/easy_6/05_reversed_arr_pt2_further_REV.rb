# Further Exploration
# An even shorter solution is possible by using either inject or each_with_object
# Just for fun, read about these methods in the Enumerable module documentation,
# and try using one in your reverse method.

def reverse(array)
  right_index = -1
  array.each_with_object([]) do |_, object|
    object << array[right_index]
    right_index -= 1
  end
end

# more clever way
def reverse(array)
  array.each_with_object([]) { |item, new_array new_array.prepend(item) }
end

# James Duot's solution, even more clever always
def reverse(array)
  array.reduce([], :unshift)
end
array = [1,2,3]
array.reduce do |arr=[], item|
  arr.unshift(item)
end

# exploring Duot's method
def reverse(array)
  array.reduce([]) { |new_array, element| new_array.unshift(element) }
end
# https://medium.com/@terrancekoar/inject-method-explained-ed531eff9af8

# Examples/Test Cases
reverse([1,2,3,4]) == [4,3,2,1]          # => true
reverse(%w(a b e d c)) == %w(c d e b a)  # => true
reverse(['abc']) == ['abc']              # => true
reverse([]) == []                        # => true

list = [1, 3, 2]                      # => [1, 3, 2]
new_list = reverse(list)              # => [2, 3, 1]
list.object_id != new_list.object_id  # => true
list == [1, 3, 2]                     # => true
new_list == [2, 3, 1]                 # => true
