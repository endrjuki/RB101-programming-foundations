number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  next if number_a < 5 && number_b < 5
  puts "5 was reached!"
  puts number_a
  puts number_b
  break
end

# if/else way
number_a = 0
number_b = 0

loop do
  number_a += rand(2)
  number_b += rand(2)
  
  if number_a < 5 && number_b < 5
    next
  else
    puts "5 has been reached"
    break
  end
end
  
