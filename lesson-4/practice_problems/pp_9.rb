# What is the return value of map in the following code? Why?

{ a: 'ant', b: 'bear' }.map do |key, value|
  if value.size > 3
    value
  end
end

# # => [nil, "bear"]
# map always returns an array
# if condition value.size > 3 is true
# it returns a value, when none of the conditions in an if statement evaluate as true,
# the if statement returns nil
# on first iteration, 'ant'.size > 3 evaluates to false, therefore return nil
# on second iteration 'bear'.size >3 evaluates to true, therefore returns 'bear'
