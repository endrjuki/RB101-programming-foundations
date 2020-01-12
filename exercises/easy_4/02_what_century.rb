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
#
# find century number
#  -if year % 100 is 0
#   -return year / 100
#  -if year % 100 is bigger than 0
#   -return year / 100 + 1
#
# find century suffix
# if `century_number` is between 11..13, century_number + 'th'
# find the last digit of `century_number`
# if `century_number` % 10 is:
#  - 1 then `century_number` + 'st'
#  - 2 then `century_number` + 'nd'
#  - 3 then `century_number` + 'rd'
#  - 4 then `century_number` + 'th'

def century_suffix(century)

  # handling the situation when last digits are 11..13
  last_digits = century.to_s[-2, 2].to_i
  if (11..13).include?(last_digits)
    return 'th'
  end

  last_digit = century.to_s[-1].to_i

  case last_digit
  when 0
    'th'
  when 1
    'st'
  when 2
    'nd'
  when 3
    'rd'
  when 4..9
    'th'
  end
end

def century(year)
  if year % 100 == 0
    century = year / 100
  else year % 100 > 0
    century = year / 100 + 1
  end
  century = century.to_s + century_suffix(century)
end




  

