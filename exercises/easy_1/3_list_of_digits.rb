# Write a method that takes one argument,
# a positive integer,
# and returns a list of the digits in the number.

def list_of_digits(int)
  str = int.to_s
  str.split('').map {|ele| ele.to_i}
end

# ls way - idiomatic ruby
def digit_list(number)
  number.to_s.chars.map(&:to_i)
end

# ls way - brute force
def digit_list(int)
  digits = []
  loop do
    number, remainder = int.divmod(10)
    digits.unshift(remainder)
    break if number == 0
  end
  digits
end
