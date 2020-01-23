# Since degrees are normally restricted to the range 0-360, can you modify
# the code so it returns a value in the appropriate range
# when the input is less than 0 or greater than 360?

MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = SECONDS_PER_MINUTE * MINUTES_PER_DEGREE
DEGREES_IN_CIRCLE = 360
DEGREE = "\xC2\xB0"

def dms(degrees_float)
  degrees_float = degrees_float % DEGREES_IN_CIRCLE # fullfulling the requirement
  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds)
end

dms(400) == %(40°00'00")
dms(-40) == %(320°00'00")
dms(-420) == %(300°00'00")
