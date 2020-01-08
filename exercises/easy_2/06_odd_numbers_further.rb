# Print all odd numbers from 1 to 99,
# inclusive. All numbers should be printed on separate lines.

# with each
(1..99).each {|n| puts n if n.odd?}

# with for loop
for n in (1..99)
  puts n if n.odd?
end

# ls way
value = 1
while value <= 99
  puts value
  value += 2
end

#
