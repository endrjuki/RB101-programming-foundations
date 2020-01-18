MINUTES_PER_HOUR = 60
HOURS_PER_DAY = 24
MINUTES_PER_DAY = MINUTES_PER_HOUR * HOURS_PER_DAY

def time_of_day(delta_minutes)
  delta_minutes = delta_minutes % MINUTES_PER_DAY 
  hours, minutes = delta_minutes.divmod(MINUTES_PER_HOUR)
  format('%02d:%02d', hours, minutes)
end

# Constant declaration
# - to make sure that there are no mystical numbers floating around the code
# line 7
# - ensure that the time difference is in the range of 0..MINUTES_PER_DAY
# divmod
# - also this step is responsible for 
# - divmod breaks down time difference in hours and minutes
#   divmod returns an array containing quotient(hours in this case) and remainder(minutes)
# Kernel#format
# - Kernel#format formats the results, each %02d produces two-digit number with leading
#   zeroes as neede
