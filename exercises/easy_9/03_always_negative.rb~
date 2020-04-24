# Write a method that takes a number as an argument.
# If the argument is a positive number, return the negative of that number.
# If the number is 0 or negative, return the original number.

def negative(number)
  case number <=> 0
  when -1 then number
  when 1 then number * (-1)
  when 0 then number
  end
end

negative(5) == -5
negative(-3) == -3
negative(0) == 0      # There's no such thing as -0 in ruby

# ls way <---- should've done that

def negative(number)
  number > 0 ? -number : number
end

# even shorter way

def negative(number)
  -number.abs # abs returns absolute value and - prepends minus sign pretty much,
end           # there is no such a thing as -+0 in Ruby so it works out fine.
