# write a method to upcase every word in a string
def titleize(str)
  arr = str.split.map do |word|
    word.capitalize!
  end
  arr.join(' ')
end

words = "the flintstones rock"

# ls way
words.split.map { |word| word.capitalize }.join(' ')
