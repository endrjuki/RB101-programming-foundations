# Write a method that counts the number of occurrences of each element in a given array.

# Input: array
# Output: string

# Explicit requirements:
#  -method that takes an array and counts occurances of each element in a given array
# Implicit requirements:
#  -method prints a string for each element in the array
#  -string contains current element and its occurance, divided by `=>` and space either side of it.

# Algorithm:
#  -initialize an empty hash called `results`
#  -iterate through array with `each` and set the current variable to `outer`
#    -iterate through the array with `each` and set the variable to `inner`
#      -within this iteration compare inner with outer
#      -if the inner/outer matches, increment/initialize it by 1 within the hash
#  -iterate over `results` hash and print out key and value as per requirements

# Test Cases:
# count_occurrences(vehicles)

# car => 4
# truck => 3
# SUV => 1
# motorcycle => 2

def how_many(arr)
  results = {}

  arr.each do |outer|
    results[outer] = 0

    arr.each do |inner|
      results[outer] += 1 if outer == inner
    end
  end

  results.each do |key, value|
    puts "#{key} => #{value}"
  end
end

# ls way
def count_occurances(arr)
  occurances = {}

  arr.uniq.each do |element|
    occurances[element] = arr.count(element)
  end

  occurances.each do |key, value|
    puts "#{key} => #{value}"
  end

end

# further exploration - case insensitive

def count_occurances2(arr)
  occurances = {}
  arr = arr.map {|element| element.downcase}

  arr.uniq.each do |element|
    occurances[element] = arr.count(element)
  end

  occurances.each do |key, value|
    puts "#{key} => #{value}"
  end
end

vehicles_further = [
  'car', 'car', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

vehicles_further = [
  'car', 'car', 'suv', 'suv', 'truck', 'car', 'SUV', 'truck',
  'motorcycle', 'motorcycle', 'car', 'truck'
]

count_occurrences(vehicles)

car => 4
truck => 3
SUV => 1
motorcycle => 2
