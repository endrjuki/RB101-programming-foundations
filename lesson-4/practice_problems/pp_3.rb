# What is the return value of reject in the following code?
# Why?

[1, 2, 3].reject do |num|
  puts num
end

# return value is a new array containing [1, 2, 3]
# block's return value is `nil`, nil is falsey
# "Returns a new array containing the items in self for which the given block is not true" from ruby docs
# since the block always returns `nil`, all of the elements will be selected.
