# hex to decimal


STR_TO_HEX = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
              '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
              'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14,
              'f' => 15
            }
BASE = 10


def has_sign?(str)
  ['-', '+'].include?(str[0])
end

def determine_sign(str)
  if str[0] == '-'
    sign = -1
  else
    sign = 1
  end
end

def remove_sign!(str)
  str = str[1, str.size]
end


def string_to_signed_integer(str, sign=1)
  if has_sign?(str)
    sign = determine_sign(str)
    str = remove_sign!(str)
  end

  integer_array = str.chars.map {|char| STR_TO_HEX[char.downcase]}
  number = 0
  integer_array.reverse_each.with_index do |int, idx|
    number += int * (BASE ** idx)
  end
number * sign
end

string_to_signed_integer('4321') == 4321
string_to_signed_integer('-570') == -570
string_to_signed_integer('+100') == 100

# ls way - using the method from previous exercise
def string_to_integer(str)
  digits = str.chars.map {|char| STR_TO_HEX[char]}
  number = 0
  digits.reverse_each.with_index {|digit, idx| number += digit * 10**idx }
  number
end

def string_to_signed_integer(str)

  case str[0]
  when '+' then string_to_integer(str[1..-1])
  when '-' then -string_to_integer(str[1..-1]) # str reference, check this out
  else          string_to_integer(str)
  end
end


# Further Exploration
# In our solution, we call string[1..-1] twice,
# and call string_to_integer three times.
# This is somewhat repetitive.
# Refactor our solution so it only makes these two calls once each.

def string_to_signed_integer(str)
  sign = str.start_with?('-') ? -1 : 1
  string_to_integer(str.delete('-+')) * sign
end
