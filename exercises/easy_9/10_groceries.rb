# Grocery List
# Write a method which takes a grocery list (array) of fruits with
# quantities and converts it into an array of the correct number of each fruit.

# Input
# - Array of arrays
#   - sub_array contains: fruit and quantity

# Output
# - Array
#   - fruit * quantity (each element)

def buy_fruit(groceries)
  result = []
  groceries.each do |sub_array|
    sub_array[1].times {result << sub_array[0]}
  end
  result
end

buy_fruit([["apples", 3], ["orange", 1], ["bananas", 2]]) ==
  ["apples", "apples", "apples", "orange", "bananas","bananas"]

# with each with object

def buy_fruit(groceries)
  groceries.each_with_object([]) do |sub_array, object|
    sub_array[1].times {object << sub_array[0]}
  end
end

# ls solution
def buy_fruit(list)
  expanded_list = []

  list.each do |item|
    fruit, quantity = item[0], item[1]
    quantity.times { expanded_list << fruit }
  end

  expanded_list
end

# another one
def buy_fruit(list)
  list.map { |fruit, quantity| [fruit] * quantity}.flatten
end
