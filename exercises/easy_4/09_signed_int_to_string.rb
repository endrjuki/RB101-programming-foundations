# convert signed integer to string, no standard conversion methods (String(), format, to_s)
INT_TO_STR = {0=>"0", 1=>"1", 2=>"2", 3=>"3", 4=>"4",
              5=>"5", 6=>"6", 7=>"7", 8=>"8", 9=>"9"
             }


def determine_sign(number)
  if number == 0
    ''
  elsif number < 0
    '-'
  else
    '+'
  end
end

def signed_integer_to_string(number)
  result = ''
  sign = determine_sign(number)

  loop do
    number, remainder = number.abs.divmod(10)
    result << INT_TO_STR[remainder]
    break if number == 0
  end
  result.reverse.prepend(sign)
end

signed_integer_to_string(4321) == '+4321'
signed_integer_to_string(-123) == '-123'
signed_integer_to_string(0) == '0'


# ls solution

def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result << INT_TO_STR[remainder]
    break if number == 0
  end
  result.reverse
end

def signed_integer_to_string(number)
  sign = case number <=> 0
         when 0 then ''
         when -1 then '-'
         when 1 then '+'
         end

  integer_to_string(number.abs).prepend(sign)
end

#
