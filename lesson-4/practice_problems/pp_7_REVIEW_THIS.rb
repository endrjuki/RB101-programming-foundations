# What is the block's return value in the following code?
# How is it determined?
# Also, what is the return value of any? in this code and what does it output?

[1, 2, 3].any? do |num|
  puts num
  num.odd?
end

# block returns a boolean value
# it is determined by `odd?` method which returns true if `num` in current iteration is
# an odd number.
# any? in this code will return `true` because `any?` returns true if the block ever returns
# anything else than `false` or `nil`
# this code will output:
# 1
# and return `true`
# It outputs only one element because any? will stop iterating once it encounters the first
# element of the array for which the block returns a truthy value
