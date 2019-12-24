# What do you expect line 7 to print?

if false
  greeting = 'hello'
end

p greeting

# `p greeting` will print `nil`

# We would expect it to throw a `undefined local variable or method `greeting' for main:Object` 
# exception, since `if` block is not executed due to it evaluating to false,
# but when you initialize variable in `if` block, Ruby initializes the variable to `nil` even if
# it's not executed
