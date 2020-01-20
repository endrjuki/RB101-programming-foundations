MAX_LENGTH_PER_LINE = 76

def split_into_lines(text)
  text_lines = []
  text_line = ''

  text.split('').each do |char|
    text_line << char
    if text_line.length == MAX_LENGTH_PER_LINE
      text_lines << [text_line]
      text_line = ''
    end
  end
  text_lines << [text_line] #unless text_line.empty?
  text_lines
end

def print_text_line(line_array)
  first_text_line_length = line_array[0].length
  line_array.each do |current_line|
    current_line_length = current_line.length

    if current_line_length < first_text_line_length
      delta = first_text_line_length - current_line_length
      puts '| ' + current_line + ' ' * delta + ' |'
    else
      puts '| ' + current_line + ' |'
    end
  end
end

def print_in_box(text)
  text_line_array = split_into_lines(text).flatten
  length = text_line_array[0].length #rescue length = 0
  
  top_bottom_edge = '+-' + '-' * length + '-+'
  vertical_padding = '| ' + ' ' * length + ' |'
  text_line = '| ' + text + ' |'

  puts top_bottom_edge
  puts vertical_padding
  print_text_line(text_line_array)
  puts vertical_padding
  puts top_bottom_edge
end
