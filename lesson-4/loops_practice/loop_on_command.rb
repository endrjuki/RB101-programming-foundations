loop do
  puts 'Should I stop looping?'
  break if (answer = gets.chomp) == 'stop'
end
