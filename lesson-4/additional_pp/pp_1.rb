# Turn this array into a hash where the names are the keys
# and the values are the positions in the array.

flintstones = ["Fred", "Barney", "Wilma", "Betty", "Pebbles", "BamBam"]
# way 1
result = {}

flintstones.each_with_index do |item, idx|
  result[item] = idx
end

# way 2
counter = 0
flintstones.each_with_object({}) do |item, hash|
  hash[item] = counter
  counter += 1
end
