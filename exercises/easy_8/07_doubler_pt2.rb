# Write a method that takes a string,
# and returns a new string in which every consonant is doubled

CONSONANTS = ['B', 'C', 'D', 'F', 'G', 'H', 'J', 'K', 'L', 'M', 'N', 'P', 'Q', 'R', 'S', 'T', 'V', 'W', 'X', 'Y']
'b' =~ /[]/i

def double_consonants(string)
  result = ''
  string.each_char do |char|
    if CONSONANTS.include?(char.upcase)
      result << char << char
    else
      result << char
    end
  end
  result
end

double_consonants('String') == "SSttrrinngg"
double_consonants("Hello-World!") == "HHellllo-WWorrlldd!"
double_consonants("July 4th") == "JJullyy 4tthh"
double_consonants('') == ""

# ls solution

CONSONANTS = %w(b c d f g h j k l m n p q r s t v w x y z)

def double_consonants(string)
  result = ''
  string.each_char do |char|
    result << char
    result << char if CONSONANTS.include?(char.downcase)
  end
  result
end

# one-liner
def double_consonants(string)
  string.chars.map { |char| CONSONANTS.include?(char.upcase) ? char * 2 : char }.join
end
