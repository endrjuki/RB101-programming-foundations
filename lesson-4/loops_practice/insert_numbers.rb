numbers = []

loop do
break if numbers.size == 5

  puts 'Enter any number:'
  numbers << input = gets.chomp.to_i
end
puts numbers
