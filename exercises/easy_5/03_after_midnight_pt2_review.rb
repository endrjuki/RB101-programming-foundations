# As seen in the previous exercise,
# the time of day can be represented as the number of minutes before or after midnight.
# If the number of minutes is positive, the time is after midnight.
# If the number of minutes is negative, the time is before midnight.

# Write two methods that each take a time of day in 24 hour format,
# and return the number of minutes before and after midnight, respectively.
# Both methods should return a value in the range 0..1439.

# You may not use ruby's Date and Time methods.

# after_midnight

# Input
# - String
# - Represents 2 numbers divided by `:`
# - The numbers represent hours and minutes: 'hours:minutes'
# - if the number is lower than 10, '0' character is prepended
# - input uses a 24h time format, `24:00` is a valid input`

# Output
# - Integer
# - In value range 0..1439
# - represents minutes

# Data Structure
#  - Integer

# split input into an array using ':' as delimiter
# convert the elements to Integers and asign to variables: `hours`, `minutes`
# if hours is equal to 24:
# - set hours to 0
# multiply hours by 60 and sum it to minutes

# before_midnight
HOURS_PER_DAY = 24
MINUTES_PER_HOUR = 60
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def after_midnight(string_time)
  hours, minutes = string_time.split(':').map(&:to_i)
  hours = 0 if hours == 24
  hours * MINUTES_PER_HOUR + minutes
end

def before_midnight(string_time)
  delta_minutes = MINUTES_PER_DAY - after_midnight(string_time)
  delta_minutes = 0 if delta_minutes == MINUTES_PER_DAY
  delta_minutes
end

# LS Solution

def after_midnight(time_str)
  hours, minutes = time_str.split(':').map(&:to_i)
  (hours * MINUTES_PER_HOUR + minutes) % MINUTES_PER_DAY # this handles the 24 issue
end
