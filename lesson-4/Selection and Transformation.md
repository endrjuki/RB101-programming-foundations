# Selection and Transformation

Looping basics:

* loop

* counter

* way to retrieve current value

* way to exit the loop

  

## Selection

Selection is picking certain elements out of the collection depending on some criterion. For example, picking all odd integers from an Array

```ruby
alphabet = 'abcdefghijklmnopqrstuvwxyz'
selected_chars = ''
counter = 0 # counter

loop do # loop
  current_char = alphabet[counter]

  if current_char == 'g' # selection criteria
    selected_chars << current_char # way to retrieve the current value   
  end

  counter += 1
  break if counter == alphabet.size # way to exit the loop
end

selected_chars # => "g"
```



## Transformation

Transformation is modifying every element in collection based on some criterion.

```ruby
fruits = ['apple', 'banana', 'pear']
transformed_elements = []
counter = 0

loop do
  current_element = fruits[counter]

  transformed_elements << current_element + 's'   # transformation criteria

  counter += 1
  break if counter == fruits.size
end

transformed_elements # => ["apples", "bananas", "pears"]
```

### Important: mutating vs non-mutating

When performing transformation, it's always important to pay attention if original collection was mutated or if a new collection was returned!

## Extracting to Methods

### Selection

#### Extract vowels from a string

```ruby
def select_vovels(str)
  selected_chars = ''
  counter = 0
  
  loop do
    current_char = str[counter]
    
    if 'aeiouAEIOU'.include?(current_char)
      selected_chars << current_char
    end
    
    counter += 1
    break if counter == str.size
  end
  selected_chars
end
```

When method is done iterating over collection, it returns a new collection `selected_chars` (String object) containing selected values

#### Extract key-value pairs from hash

```ruby
def select_fruit(hsh)
  results = {}
  counter = 0
  keys = hsh.keys # => ['apple', 'carrot', 'pear', 'brocolli']

  loop do

    break if counter == hsh.size # this has to be on top incase hsh is empty hash

    current_produce = keys[counter]
    current_type = hsh[current_produce]

    if current_type == 'Fruit'
      results.store(current_produce, current_type)
    end

    counter += 1
  end
  results
end


produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

select_fruit(produce) # => {"apple"=>"Fruit", "pear"=>"Fruit"}
```

### 

### Transfromation

#### Double each element in collection

```ruby
def double_numbers(numbers)
  doubled_numbers = []
  counter = 0
  
  loop do
    break if counter == numbers.size    
    current_number = numbers[counter]
    doubled_numbers << current_number * 2
    
    counter += 1
  end
  doubled_numbers
end
```

This method returns a new array object, therefore doesn't mutate the original object

This method would mutate the original object:

```ruby
def double_numbers!(numbers)
  counter = 0

  loop do
    break if counter == numbers.size

    numbers[counter] *= 2
    counter +=1
  end
  numbers
end

my_numbers = [1, 4, 3, 7, 2, 6]
```

### More Flexible Methods

#### Fruits and Vegetables refactor

`select_fruit` method from earlier re factored to be more flexible - can now chose between to select based on 'Fruits' or 'Vegetables'

```ruby
def general_select(hsh, produce_type)
  result = {}
  keys = hsh.keys
  count = 0

  loop do
    break if count == hsh.size

    current_key = keys[count]
    current_value = hsh[current_key]

    if produce_type == current_value #selection criteria
      result.store(current_key, current_value)
    end

    count += 1
  end
  result
end

produce = {
  'apple' => 'Fruit',
  'carrot' => 'Vegetable',
  'pear' => 'Fruit',
  'broccoli' => 'Vegetable'
}

general_select(produce, 'Fruit')     # => {"apple"=>"Fruit", "pear"=>"Fruit"}
general_select(produce, 'Vegetable') # => {"carrot"=>"Vegetable", "broccoli"=>"Vegetable"}
general_select(produce, 'Meat')      # => {}

```



#### Double each element refactor - multiply each element by an integer

Double each element method from earlier refactored - multiply by value passed in.

```ruby
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

# original array is not mutated, new array is returned
```



#### "How many times 'g' appear in sentence" refactored - how many times a character appears in a sentence

```ruby
def select_chars(str, char)
  result = ''
  count = 0

  loop do
    break if count == str.size
    result << str[count] if str[count] == char

    count += 1
  end
  result
end

select_chars(question, 'a').size # => 8
select_chars(question, 't').size # => 5
select_chars(question, 'z').size # => 0
```

Note: by chaining `size` method on, the return value of the expression will be an integer instead of string

### Kernel#loop and for

iterating through `for` loop and printing out elements:

```ruby
alphabet = 'abcdefghijklmnopqrstuvwxyz'

for char in alphabet.chars
  puts char
end
```



## Summary

* By performing iteration, selection or transformation operations on collection it is possible to manipulate the collection in nearly any way we may need to
* Typically these are generic actions that can be moved into a method, so this method can be reused on different collections
* Pay attention when the original collection is mutated vs when the method returns a new collection 
* Understand how these methods can be made more generic by allowing additional parameters that specify criteria for selection or transformation
* It is common to chain methods on collections, but pay attention to their return values. Chaining methods on empty collections and `nil` breaks many programs

