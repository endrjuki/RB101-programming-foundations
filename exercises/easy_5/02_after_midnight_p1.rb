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
# - find out how many full hours are in the input `time`?
#   - divide time by 60 and asign the value to a variable 'hours'

# - find out how many minutes there are in 'time' if you take away full hours
#   - find remainder of `time` devided by 60 and assign to variable = minutes
#
# - find out if time is in positive or negative direction
#
# - find out the hour reading on the clock for hours
#   - if in negative direction
#   - if in positive direction
#
# - find out minute reading
#   - if positive
#   - if negative
#


#


HOURS_IN_A_DAY = 24
MINUTES_IN_HOUR = 60
HOURS_IN_A_DAY_ARRAY = Array(0..23)



def full_hours(time)
  time.abs / 60
end

def time_direction_positive?(time)
  time >= 0
end


def minutes_remainder(time)
  time.abs % MINUTES_IN_HOUR
end

def only_24_hours(hours)
  hours % 24
end

def time_of_day(time)
  p hours = full_hours(time)
  p minutes = minutes_remainder(time)
end


def read_hours_negative(hours, minutes)
    # hours = (hours + 1) if minutes > 0

  time_reading = 0
  HOURS_IN_A_DAY_ARRAY.reverse.each_with_index do |number, index|
    (time_reading = number) if index == hours
  end
  time_reading
end

def read_hours_positive(hours)
  time_reading = 0
  HOURS_IN_A_DAY_ARRAY.each_with_index do |number, index|
    (time_reading = number) if index == hours
  end
  time_reading
end

def read_minutes_negative(minutes)
  MINUTES_IN_HOUR - minutes
end




def time_of_day(time)
  relevant_hours = full_hours(time) % HOURS_IN_A_DAY
  minutes = minutes_remainder(time)
  time_direction_positive = time_direction_positive?(time)


  if time_direction_positive
    hour_reading = read_hours_positive(relevant_hours)
  else
    hour_reading = read_hours_negative(relevant_hours, minutes)
  end

  if time_direction_positive
    minute_reading = minutes
  else
    minute_reading = read_minutes_negative(minutes)
  end

  if hour_reading < 10
    string_hours = '0' + hour_reading.to_s
  else
    string_hours = hour_reading.to_s
  end

  if minute_reading < 10
    string_minutes = '0' + minute_reading.to_s
  else
    string_minutes = minute_reading.to_s
  end

  string_hours + ':' + string_minutes
end








time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"



