# Write a method that takes one argument,
# a positive integer, and returns a string of alternating 1s and 0s,
# always starting with 1.
# The length of the string should match the given integer.

# input
#   an integer:
#     -positive integer

# output
#   a string:
#     -string
#     -contains alternating '1' and '0'
#     -starts with '1'

# algorithm
#   -define a method `stringy` that takes an argument: `int`
#   -initialize a variable string and set it to an empty string
#   -initialize times loop with idx as block parameters
#     -concatinate 1 if idx is even
#     -concatinate 0 if idx is odd
#   -return string
#

def stringy(size, start_with = 0)
  string = ''

  case start_with
  when 1
    size.times do |idx|
      string += '1' if idx.even?
      string += '0' if idx.odd?
    end
  when 0
    size.times do |idx|
      string += '0' if idx.even?
      string += '1' if idx.odd?
    end
  end
  string
end

# examples/test cases:
puts stringy(6) == '101010'
puts stringy(9) == '101010101'
puts stringy(4) == '1010'
puts stringy(7) == '1010101'

#LS way

def stringy(size)
  numbers = []

  size.times do |index|
    number = index.even? 1 : 0
    numbers << number
  end

  numbers.join
end

#ls way + additional feature

def stringy(size, start_with = 0)
  numbers = []

  size.times do |index|
    case start_with
    when 0
      number = index.even? ? 0 : 1
      numbers << number
    when 1
      number = index.even? ? 1 : 0
      numbers << number
    end
  end

  numbers.join
end
