# Write a method that takes a year as input and returns the century.
# The return value should be a string that begins with the century number,
# and ends with st, nd, rd, or th as appropriate for that number.
# New centuries begin in years that end with 01.
# So, the years 1901-2000 comprise the 20th century.

# Examples/Test Cases:
century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

# Input
# - Year
# - Integer

# Output
# - Century (st, nd, rd, th)
# - String

# Rules
# - 1st, 2nd, 3rd, 4th... 22th
# - 21st, 22nd, 23rd, 24th... 30th
# - 31st..................... 40th
# - New centuries begin in years ending with 01.

# Algorithm
# retrieve input 'year' from user
# divide year by 100 and plus 1 to find `century_number`
# if `century_number` is between 11..13, century_number + 'th'
# find the last digit of `century_number`
# if `century_number` % 10 is:
#   - 1 then `century_number` + 'st'
#   - 2 then `century_number` + 'nd'
#   - 3 then `century_number` + 'rd'
#   - 4 then `century_number` + 'th'

def century(num)
  century_num = num / 100 + 1
  answer = ''

  if num % 100 == 0
    century_num -= 1
  end

  if (11..13).include?(century_num)
    answer << (num.to_s + 'th')
    return answer
  end

  last_digit = century_num % 10
  century_num = century_num.to_s

  century_num << case last_digit
                when 1
                  'st'
                when 2
                  'nd'
                when 3
                  'rd'
                else
                  'th'
    end
end
