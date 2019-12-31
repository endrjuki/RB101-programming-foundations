# What is the return value of `select` method below, why?
[1, 2, 3].select do |num|
  num > 5
  'hi'
end

# returns [1, 2, 3], because `select` method selects based on truthiness of the return value
# of the block
# last expression of block is `hi` which doesn't evaulate to `nil` or `false` therefore is 
# considered as "truthy" in ruby.
# since the return value of the block is always truthy in this case
# select will return a new array containing [1, 2, 3]
