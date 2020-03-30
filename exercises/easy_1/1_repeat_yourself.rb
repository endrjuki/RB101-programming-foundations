# Write a method that takes two arguments,
# a string and a positive integer,
# and prints the string as many times as the integer indicates.

# Input
# - string
# Output
# - string

# How I would do it now
def repeat(str, int)
  int.times { puts str }
end

# with a while loop
def repeat(str, int)
  counter = 0

  while counter != int
    puts str
    counter += 1
  end
end

# with loop do..end
def repeat(str, int)
  counter = 0

  loop do
    puts str
    counter += 1
    break if counter == int
  end
end
