# Write a method that takes a string,
# and returns a new string in which every character is doubled.

def repeater(string)
  result = ''
  string.chars.each {|char| result << (char * 2)}
  result
end
repeater('Hello') == "HHeelllloo"
repeater("Good job!") == "GGoooodd  jjoobb!!"
repeater('') == ''

# ls way

def repeater(string)
  result = ''
  string.each_char do |char|
    result << char << char
  end
  result
end

# Revisiting this exercise
def repeater(string)
  string.chars.map { |char| char * 2}.join
end
