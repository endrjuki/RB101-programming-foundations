# The time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write a method that takes a time using this minute-based format
# and returns the time of day in 24 hour format (hh:mm).
# Your method should work with any integer input.

# You may not use ruby's Date and Time classes.

# Input
# - Integer
# - Minutes +- after/before midnight

# Output
# - String
# - Time in 24h format (hh:mm)

# Algorithm
# - determine if input is a positive or negative value
#   - assign the boolean value to variable time_positive
# - calculate full hours from input minutes
# - calculate the relevant hours (remove all the full 24h intervals) from full hours
#   - assign to variable `hours`
# - calculate the minutes by taking the remainder of input minutes divided by 60
#   - assign the value to variable `minutes`
#
# - if time is negative
#   - determine if `minutes` is bigger than 0
#     - if yes, then increment hours by one
#   - calculate value of 24 - hours
#     - reassign hours to this value
#   - determine if `minutes` is bigger than 0
#     - calculate value of 60 - minutes, assign the value to variable `minutes`
#
# -if `hours` is less than 10
#  - assign hours_string to '0' + hours.to_s
# -if `hours` is over 10
#  - assing `hours_string to hours
#
# -if minutes is less than 10
# - assign minutes_string to '0' + minutes.to_s
# -if `minutes` is over 10
#   -assign `minutes_string to minutes.to_s
# - output hours_string + ':' + minutes_string
#

MINUTES_IN_HOUR = 60
HOURS_IN_DAY = 24

def retrieve_full_hours(minutes)
  minutes.abs / MINUTES_IN_HOUR
end

def time_negative?(time)
  time < 0
end

def retrieve_remainder_minutes(minutes)
  minutes.abs % MINUTES_IN_HOUR
end

def time_of_day(time)
  full_hours = retrieve_full_hours(time)
  hours = full_hours % HOURS_IN_DAY
  minutes = retrieve_remainder_minutes(time)

  if time_negative?(time)
    hours += 1 if minutes > 0
    hours = HOURS_IN_DAY - hours
    minutes = 60 - minutes if minutes > 0
  end
  format('%02d:%02d', hours, minutes)
end





