# Methods

## Each

### calling `each` on an array

* `each`

  ```ruby
  numbers = [1, 2, 3]
  counter = 0
  
  loop do
    break if counter == numbers.size
    puts numbers[counter]
    counter += 1
  end
  ```

   The same task can be achieved by using method `each`

  ```ruby
  [1, 2, 3].each do |number|
  	puts number
  end
  ```

  The code within `do..end` block is executed upon each iteration.

  For each iteration, `each` sends the value of current element to the block in form of an argument (in this case, `number`)

  We are calling `each` on array, `each` knows that there is only one element per iteration, so `each` passes the block only one argument, `number`

### calling `each on hash

* each on hash

  ```ruby
  hash = { a: 1, b: 2, c: 3 }
  
  hash.each do |key, value|
    puts "The key is #{key} and the value is #{value}"
  end
  ```

  We are calling `each` on array this time, so `each` passes 2 elements to the block as arguments: `key` and `value`

We can iterate over hashes and arrays using `loop` or `each`, they are mostly equal, apart from return value:

 `each` returns the original collection once its done iterating  

```ruby
def a_method
  [1, 2, 3].each do |num|
    puts num * 2
  end
end

a_method # => [1, 2, 3]
```

Slightly changing this:

```ruby
def a_method
  [1, 2, 3].each do |num|
    puts num * 2
  end

  puts 'hi'
end

a_method # => nil
# last expression in method is now `puts 'hi'` instead of
# each, puts method prints to screen and returns nil
# therefore a_method in this case will return nil
```



## Select

Instead of implementing `loop` with a counter and a break condition, we can achieve the same task significantly easier:

```ruby
[1, 2, 3].select do |number|
  number.odd?
end
# select evaluates the return value of the block upon each itteration, which is the last expression within the block, `number.odd?` in this case

```

If the return value of the block is "truthy" (everything but `nil` and `false`), then element during that iteration will be selected

Block could always evaluate to "truthy", for example:

```ruby
[1, 2, 3].select do |num|
  num + 1
end
# since last expression in the block always evalautes to truthy, every single element will be selected.
```

### Return Value of `select`

`select` returns a new collection containing all the selected elements

`select` performs selection based on truthiness of the last expression of the block's return value, if the value is always truthy - all elements are returned. When an element is selected, it's placed in a new collection.

### Be Mindful of the block's return value

It's important to always be mindful of the return value of the block:

```ruby
[1, 2, 3].select do |num|
  num + 1
  puts num # => nil
end
```

Since block return value is nil, select will return an empty array, because `nil` is considered a 'falsey' value.

## Map

Map uses the return value of the block as well, but the main difference is: it uses the return value of the block to perform transformation, instead of selection.

map takes return value of the block and places it in a new collectin

```ruby
[1, 2, 3].map do |number|
  number * 2
end
# => => [2, 4, 6]
```

`map` takes return value of `number * 2` and places it in a new collection.

```ruby
[1, 2, 3].map do |num|
  num.odd?
end
# num.odd? returns true or false
# => [true, false, true]
```

`map` takes return value of `num.odd?`(true/false) upon each iteration and places it in a new collection

```ruby
[1, 2, 3].map do |num|
  num.odd?
  puts num
end
# `puts num` returns `nil`
# => [nil, nil, nil]
```

`map` takes return value of `puts num` upon each iteration (puts always returns `nil`) and places it in a new collection

```ruby
[1, 2, 3].map do |num|
  'hi' 
end
# the block returns 'hi'
# => ['hi', 'hi', 'hi']
```

`map` yet again takes return value of the block, which is `hi` this time, and places it into a new collection upon each iteration

## Summary

|  Method  |     Action     | Considers return value of the block? | Returns a new collection? | Length of the returned collection? |
| :------: | :------------: | :----------------------------------: | :-----------------------: | :--------------------------------: |
|  `each`  |   iteration    |                  no                  |   no, returns original    |         length of original         |
| `select` |   selection    |         yes, it's truthiness         |            yes            |     length of original or less     |
|  `map`   | transformation |                 yes                  |            yes            |         length of original         |

