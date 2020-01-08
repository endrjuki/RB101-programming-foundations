def select_chars(str, char)
  result = ''
  count = 0

  loop do
    break if count == str.size
    result << str[count] if str[count] == char

    count += 1
  end
  result
end

select_chars(question, 'a').size # => 8
select_chars(question, 't').size # => 5
select_chars(question, 'z').size # => 0
