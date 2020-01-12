# Write a program that will ask a user for an input of a word or multiple words and give back the number of characters.
# Spaces should not be counted as a character.

# Example
# Please write word or multiple words: walk
# There are 4 characters in "walk".

# Please write word or multiple words: walk, don't run
# There are 13 characters in "walk, don't run".

# Input
#   string:
#     -contains word or words
# Output
#   string:
#     - There are (n) characters in (input string)

# Rules
#   -retrieve string from user
#     -can be a single or multiple words
#   -output how many characters the string has
#     -spaces doesn't count as a char

# Algorithm
#   -retrieve input from user
#   -split input into an array of characters using space as delimiter
#   -intialize a variable `result`
#   -iterate through array and count up characters
#     -save value to `result`
#   - return result with a pretty message

print "Please write word or multiple words: "
input = gets.chomp

string_array = input.split(' ')

result = 0
string_array.each {|string| result += string.size}

puts "There are #{result} characters in \"#{input}\"" # review the use of escape chars

# ls way
print "Please write word or multiple words: "
input = gets.chomp
number_of_characters = input.delete(' ').size
puts "There are #{number_of_characters} characters in \"#{input}\""



