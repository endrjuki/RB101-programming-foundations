name = 'Bob'
save_name = name
name.upcase!
puts name, save_name

# Output:
# BOB
# BOB
#
# Reasoning
#
# on line 2 save_name is pointed to the save object `name` is pointing to: 'Bob'
# `upcase!` is a mutating method that affects the original object, therefore, since `name` and `save_name` are pointing to the same object
# they will both return the same, now mutated object: BOB
