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

# Revisiting this exercise

# Input
# - string
# - always fits in terminal window = 67 chars

# Output
# - multiple strings
#   - forms a box with input text in the middle

# Algorithm
# Split string into lines based on character count
# - split string into words by using space as delimiter
# - iterate through words array
#   - add word to a different array that represents lines if the max length of line is less that 67
#   - if it exceed the max_text_length limit
#     - add the line to a resuliting array
#     - clear the line array and start building it up again

# Render text lines
# - determine the longest text line and save the length value
# - iterate through text_lines
# - output the text and append empty space after the text based on the difference
#   between current and longest string in the text_lines


PADDING = 5
MAX_TEXT_LENGTH = 73 - PADDING * 2

def text_lines(text)
  text_lines = []
  text_line = []
  text.split.each do |word|
    if (text_line.join(' ').length + word.length) < MAX_TEXT_LENGTH
      text_line << word
    else
      text_lines << text_line.join(' ')
      text_line = []
      text_line << word
    end
    
  end
  text_lines
end

def render_top_bottom(string_length)
  puts "+" + ("-" * (string_length + PADDING*2)) + "+"
end

def render_blank_line(string_length)
  puts "|" + " " * (string_length + PADDING*2) + "|"
end

def render_text(lines, length)
  lines.each do |line|
    delta_length = (length - line.length).abs
    puts "|" + (" " * PADDING) + ("#{line}") + (" " * delta_length) + (" " *PADDING)  + "|"
  end
end

def text_in_box(string)
  lines = text_lines(string)
  length = lines.max {|a, b| a.length <=> b.length}.length rescue length = 0
  render_top_bottom(length)
  render_blank_line(length)
  render_text(lines, length)
  render_blank_line(length)
  render_top_bottom(length)
end
