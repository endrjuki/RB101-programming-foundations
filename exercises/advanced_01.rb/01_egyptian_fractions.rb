# Algorithm
# - initialize an array for resulting values(denominators)
# - initialize a variable and set it to 1 (denominator)
# - Initiate a loop that breaks when the input real number has been reduced to 0
#   - if input_number - 1/denominator is 0 or positive
#     - add the denominator to resulting value array
#     - reassign the input_number to input_number - 1/denomintaor
#   - increment denominator by 1
# - return the array

def egyptian(rational_n)
  denominators = []
  denominator = 1

  while rational_n > 0
    if rational_n - Rational(1, denominator) >= 0
      rational_n -= Rational(1, denominator)
      denominators << denominator
    end
    denominator += 1
  end
  denominator
end

def unegyptian(arr)
  arr.reduce(Rational(0)) { |sum, denominator| sum + Rational(1, denominator) }
end

#ls way

def egyptian(target_value)
  denominators = []
  unit_denominator = 1
  until target_value == 0
    unit_fraction = Rational(1, unit_denominator)
    if unit_fraction <= target_value
      target_value - unit_fraction
      denominators << unit_denominator
    end

    unit_denominator += 1
  end
  denominators
end
