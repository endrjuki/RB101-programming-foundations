def multiply(numbers, multiplier)
  results = []
  count = 0

  loop do
    break if count == numbers.size

    current_number = numbers[count]
    results << current_number * multiplier

    count += 1
  end
  results
end

my_numbers = [1, 4, 3, 7, 2, 6]
multiply(my_numbers, 3) # => [3, 12, 9, 21, 6, 18]

# original array is not mutated, new array is returned.
