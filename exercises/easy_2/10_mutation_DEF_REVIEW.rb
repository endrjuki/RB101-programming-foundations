array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = []
array1.each { |value| array2 << value }
array1.each { |value| value.upcase! if value.start_with?('C', 'S') }
puts array2

#output
#Moe
#Larry
#CURLY
#SHEMP
#Harpo
#CHICO
#Groucho
#Zeppo

# first loop simply copies references from `array1` to `array2`, and after the first loop completes, both arrays contain the same
# string objects: if you modify one, that modification will reflect in both arrays

# Further explorations
# could use assignment, map and non mutating method upcase

array1 = %w(Moe Larry Curly Shemp Harpo Chico Groucho Zeppo)
array2 = array1.map do |value|
  value.start_with?('C', 'S') ? value.upcase : value.capitalize
end

