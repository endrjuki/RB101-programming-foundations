# modify the method from previous exercise to not count non-alphabetic swap_first_last_characters



def word_sizes(word_string)
  counts = Hash.new(0)
  word_string.gsub(/[^a-z ]/i, '').split.each do |word|
    counts[word.size] += 1
  end
  counts
end

# ls way
def word_sizes(word_string)
  counts = Hash.new(0)
  word_string.split.each do |word|
    clean_word = word.delete('a-zA-Z')
    counts[clean_word.size] += 1
  end
  counts
end

# Further Explorations
# achieve same result using String#count instead of tring#delete
def word_sizes(word_string)
  counts = Hash.new(0)
  word_string.split.each do |word|
    counts[word.count('a-zA-Z')] += 1
  end
  counts
end

word_sizes('Four score and seven.') == { 3 => 1, 4 => 1, 5 => 1, 6 => 1 }
word_sizes('Hey diddle diddle, the cat and the fiddle!') == { 3 => 5, 6 => 1, 7 => 2 }
word_sizes("What's up doc?") == { 6 => 1, 2 => 1, 4 => 1 }
word_sizes('') == {}

# Revisiting this exercise

def word_sizes(string)
  word_count = Hash.new(0)
  string.split.each { |word| word_count[word.count('a-zA-Z0-9')] += 1 }
  word_count  
end
