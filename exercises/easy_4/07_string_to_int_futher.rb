# hex to decimal


STR_TO_HEX = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
              '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9,
              'a' => 10, 'b' => 11, 'c' => 12, 'd' => 13, 'e' => 14,
              'f' => 15
            }
BASE = 16
def hexadecimal_to_integer(str)
  integer_array = str.chars.map {|char| STR_TO_HEX[char.downcase]}
  number = 0
  integer_array.reverse_each.with_index do |int, idx|
    number += int * (BASE ** idx)
  end
number
end

