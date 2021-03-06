# Write a method that takes a floating point number that represents
# an angle between 0 and 360 degrees and returns a String that represents
# that angle in degrees, minutes and seconds.
# You should use a degree symbol (°) to represent degrees, a single quote (')
# to represent minutes, and a double quote (") to represent seconds.
# A degree has 60 minutes, while a minute has 60 seconds.
# Note: your results may differ slightly depending on how you round values, but should be within a second or two of the results shown.

#You should use two digit numbers with leading zeros when formatting the minutes and seconds, e.g., 321°03'07".

#You may use his constant to represent the degree symbol: DEGREE = "\xC2\xB0"
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = SECONDS_PER_MINUTE * MINUTES_PER_DEGREE
DEGREE = "\xC2\xB0"

def dms(degrees)
  degree = degrees.to_i
  second_total = (degrees - degree) * SECONDS_PER_DEGREE
  minutes = second_total / MINUTES_PER_DEGREE
  seconds = second_total % MINUTES_PER_DEGREE

  format("%02d#{DEGREE}%02d\'%02d\"", degree, minutes, seconds)
end

# with divmod
MINUTES_PER_DEGREE = 60
SECONDS_PER_MINUTE = 60
SECONDS_PER_DEGREE = SECONDS_PER_MINUTE * MINUTES_PER_DEGREE
DEGREE = "\xC2\xB0"

def dms(degrees_float)

  total_seconds = (degrees_float * SECONDS_PER_DEGREE).round
  degrees, remaining_seconds = total_seconds.divmod(SECONDS_PER_DEGREE)
  minutes, seconds = remaining_seconds.divmod(SECONDS_PER_MINUTE)
  format(%(#{degrees}#{DEGREE}%02d'%02d"), minutes, seconds) # %(string) allows us to deal with quotes and double quotes in string
end




dms(30) == %(30°00'00")
dms(76.73) == %(76°43'48")
dms(254.6) == %(254°36'00")
dms(93.034773) == %(93°02'05")
dms(0) == %(0°00'00")
dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
