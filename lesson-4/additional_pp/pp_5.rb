# find the index of the first name starting with Be

flintstones = %w(Fred Barney Wilma Betty BamBam Pebbles)
result = ''
flintstones.each_with_index do |name, idx|
  result = idx if name.start_with?('Be')
end
result

#another way

flintstones.find_index { |name| name.start_with?('Be') }

#ls way

flintstones.index { |name| name[0, 2] == 'Be' }
