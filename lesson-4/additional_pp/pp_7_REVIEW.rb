# return a hash with
#
def remove_space(str)
  str.gsub(' ', '')
end

def return_char_array(str)
  str = remove_space(str)
  str.chars
end

def return_unique_chars(str)
  str = remove_space(str)
  str = str.chars.uniq
end

statement = "The Flintstones Rock"

result = {}
char_array = return_char_array(statement)
unique_characters = return_unique_chars(statement).sort

unique_characters.each do |uniq_char|
  value = char_array.count(uniq_char)
  result.store(uniq_char, value)
end

  
# ls way
=begin
result = {}
letters = ('A'..'Z').to_a + ('a'..'z').to_a
letters.each do |letter|
  letter_frequency = statement.scan(letter).count
  result[letter] = letter_frequency if letter_frequency > 0
end

=end



