# convert integer to string, no standard conversion methods (String(), format, to_s)
INT_TO_STR = {0=>"0", 1=>"1", 2=>"2", 3=>"3", 4=>"4",
              5=>"5", 6=>"6", 7=>"7", 8=>"8", 9=>"9"
             }
def integer_to_string(number)
  result = ''
  loop do
    number, remainder = number.divmod(10)
    result << INT_TO_STR[remainder]
    break if number == 0
  end
  result.reverse
end



integer_to_string(4321) == '4321'
integer_to_string(0) == '0'
integer_to_string(5000) == '5000'
