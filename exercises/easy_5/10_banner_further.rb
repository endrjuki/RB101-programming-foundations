# Write a method that will take a short line of text, and print it within a box.

# print_in_box('To boldly go where no one has gone before.')
#+--------------------------------------------+
#|                                            |
#| To boldly go where no one has gone before. |
#|                                            |
#+--------------------------------------------+

# You may assume that the input will always fit in your terminal window.

# Input
# - string
# - always fits in terminal window = 67 chars

# Output
# +--+
# |  |
# |  |
# |  |
# +--+
# Empty box
# - 1 line:
#   - '+-' + ('-' * n) + '-+'
# - 2 line:
#   - '| ' + ' ' * n +'  |'
# - 3 line:
#   - '| ' + input_string + ' |'
# - 4 line:
#   - same as 2 line
# - 5 line:
#   - same as 1 line


# further exploration: truncate the text
MAX_TEXT_LENGTH = 73

def print_in_box(text)
  if text.length > MAX_TEXT_LENGTH
    text = text[0, MAX_TEXT_LENGTH] + '...'
    length = MAX_TEXT_LENGTH + '...'.length
  else
  length = text.length
  end
  top_bottom_edge = '+-' + '-' * length + '-+'
  vertical_padding = '| ' + ' ' * length + ' |'
  text_line = '| ' + text + ' |'

  puts top_bottom_edge
  puts vertical_padding
  puts text_line
  puts vertical_padding
  puts top_bottom_edge
end

# Further Explorations: multi line strings

# Algorithm
# - initialize an empty array text_lines
# - initialize an empty array 'text_line'
#
# - split text into array of arrays(text_lines), each line 76 characters
#
# - access the first element of the array to determine the box length
#   assign the value to a varaible
#
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
  text_lines << [text_line] unless text_line.empty?
  text_lines
end

#

def print_text_line(line_array)
  first_text_line_length = line_array[0].length rescue
  line_array.each do |current_line|
    current_line_length = current_line.length rescue

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
  length = text_line_array[0].length



  top_bottom_edge = '+-' + '-' * length + '-+'
  vertical_padding = '| ' + ' ' * length + ' |'
  text_line = '| ' + text + ' |'

  puts top_bottom_edge
  puts vertical_padding
  print_text_line(text_line_array)
  puts vertical_padding
  puts top_bottom_edge
end
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+
