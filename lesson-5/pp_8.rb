# Using the each method, write some code to output all of the vowels from the strings.

VOWELS = %w(a e i o u)

hsh = {first: ['the', 'quick'], second: ['brown', 'fox'], third: ['jumped'], fourth: ['over', 'the', 'lazy', 'dog']}

hsh.each do |_, strings|
  strings.each do |string|
    string.chars.each do |char|
      puts char if VOWELS.include?(char.downcase)
    end
  end
end
