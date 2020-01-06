# Write a method that takes two arguments,
# a string and a positive integer,
# and prints the string as many times as the integer indicates.

# Input: string
# Output: print string as many times as integer indicates
# Rules:
#   Explicit requirements:
#     -method must take two arguments: a string and a POSITIVE integer
#     -method must print the string as many times as the integer indicates

#   Implicit requirements: ????????????????????//

# Test cases:
# repeat('Hello', 3) =>
# Hello
# Hello
# Hello

# Questions:
# can we assume that inputs are valid?

def print_times(str, integer)
  integer.times {puts str}
end

def print_times_2(str, integer)
  counter = integer

  loop do
    break if counter == 0
    puts str
    counter -= 1
  end
end

    
