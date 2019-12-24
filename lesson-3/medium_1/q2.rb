puts "the value of 40 + 2 is " + (40 + 2)
=begin
This will raise a "TypeError (no implicit conversion of Integer into String)", because
(40 + 2) is an integer and it's being concatenated to a string


=end

puts "the value of 40 + 2 is " + (40 + 2).to_s

puts "the value of 40 + 2 is #{40 + 2}"
