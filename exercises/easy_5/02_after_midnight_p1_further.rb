# Further Exploration

# How would you approach this problem if you were allowed to use
# ruby's Date and Time classes?
# Suppose you also needed to consider the day of week?
# (Assume that delta_minutes is the number of minutes before
# or after midnight between Saturday and Sunday; in such a method,
# a delta_minutes value of -4231 would need to produce a return value of `Thursday 01:29`)

SECONDS_IN_MINUTE = 60

# answer to further Exploration
def time_of_day(delta_minutes)
  t = Time.new(2020, 01, 19)
  t = t + delta_minutes * SECONDS_IN_MINUTE
  t.strftime("%A %H:%M")
end

# this solves p1 problem
def time_of_day(delta_minutes)
  t = Time.new(2020, 01, 19)
  t = t + delta_minutes * SECONDS_IN_MINUTE
  t.strftime("%H:%M")
end
