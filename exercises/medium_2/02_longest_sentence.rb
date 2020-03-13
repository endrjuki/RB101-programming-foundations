# Longest Sentence
# Write a program that reads the content of a text file
# and then prints the longest sentence in the file based on number of words.
# Sentences may end with periods (.), exclamation points (!),
# or question marks (?).
# Any sequence of characters that are not spaces or sentence-ending characters should be treated as a word.
# You should also print the number of words in the longest sentence.

#text = File.read("pg84.txt")
#sentences = text.gsub(/\!|\?/, '.').split('.')
#number_of_words = sentences.map { |sentence| sentence.split(' ').length}.max
#puts "The longest sentence in this text has #{number_of_words.to_s} words"

# ls solution
text = File.read("pg84.txt")
sentences = text.split(/\.|\?|\!/)
largest_sentence = sentences.max_by { |sentence| sentence.split.size }.strip
number_of_words = largest_sentence.split.size

puts "#{largest_sentence}"
puts ""
puts "Containing #{number_of_words} words"
