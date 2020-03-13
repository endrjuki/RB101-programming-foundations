# Convert numeric string to integer
# can't use built in method to_s
# assume all chars will be numeric

# Input
# - string
#   - contains numbers
# Output
# - Integer

STRING_TO_INT = {'0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4, '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9}

def string_to_integer(str)
  integer_array = str.chars.map {|char| STRING_TO_INT[char]}
  number = 0
  integer_array.reverse_each.with_index do |int, idx|
    number += int if idx == 0
    number += int * (10 ** idx) unless idx == 0
  end
number
end

string_to_integer('4321') == 4321
string_to_integer('570') == 570

# ls way
DIGITS = {
  '0' => 0, '1' => 1, '2' => 2, '3' => 3, '4' => 4,
  '5' => 5, '6' => 6, '7' => 7, '8' => 8, '9' => 9
}

def string_to_integer(string)
  digits = string.chars.map { |char| DIGITS[char] }
  value = 0
  digits.each { |digit| value = 10 * value + digit}
end


36
36
