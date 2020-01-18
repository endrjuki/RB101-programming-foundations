require 'time'

MINUTES_IN_HOUR = 60
SECONDS_IN_MINUTE = 60
HOURS_IN_DAY = 24
MINUTES_IN_DAY = MINUTES_IN_HOUR * HOURS_IN_DAY
def after_midnight(time)
  t = Time.parse(time)
  t.hour * MINUTES_IN_HOUR + t.min
end

def before_midnight(time)
  t = Time.parse(time)
  hours = t.hour
  minutes = t.min

  hours = 0 if hours == 24
  return 0 if hours == 0 && minutes == 0

  MINUTES_IN_DAY - (hours * MINUTES_IN_HOUR + minutes)
end
