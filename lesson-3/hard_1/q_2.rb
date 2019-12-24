greetings = { a: 'hi' }
informal_greeting = greetings[:a]
informal_greeting << ' there'

puts informal_greeting  #  => "hi there"
puts greetings

# Output is `{a: 'hi there'}
# because `informal_greeting` references the original String object 'hi' in `greetings` hash.
# Since `<<` is a mutating method, the original string object gets modified.

#workaround 1
#`informal_greeting = greetings[:a].clone` this essentialy binds `informal_greeting` to a new object
# that contains the value of `greetings[:a]`, therefore if we operate on `informal_greeting`, we won't
# modify the original hash

#workaround 2
#Use string concatination
#informal_greeting = informal_greeting + ' there'
#assignmnet doesn't mutate the object, simply binds the variable to a new object.
