def count_chars(str, char)
  result = ''
  count = 0

  loop do
    break if count == str.size
    result << str[count] if str[count] == char

    count += 1
  end
  result
end
