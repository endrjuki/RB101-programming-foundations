alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0

loop do
  current_char = alphabet[counter]

  if current_char == 'g' # selection criteria
    selected_chars << current_char
  end

  counter += 1
  break if counter == alphabet.size
end

puts selected_chars
