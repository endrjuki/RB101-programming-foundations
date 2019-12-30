# More Methods

## Enumerable#any?

[Enumerable#any? via ruby-doc](https://ruby-doc.org/core-2.7.0/Enumerable.html#method-i-any-3F)

Passes each element to the block, returns `true` if the block EVER returns anything else than `false` or `nil`

basically if block ever returns a truthy value

If the block will return a truthy value to any element in the array, method will return `true`

```ruby
[1, 2, 3].any? do |num|
  num > 2
end
# => true
```

### `any?` in hash

```ruby
{ a: "ant", b: "bear", c: "cat" }.any? do |key, value|
  value.size > 4
end
# => false
```

Returns a boolean signifying if `value.size > 4` evaluates to true for any value in the hash

## Enumerable#all?

`all?` is similair to `any?` because it looks at the truthiness of the block's return value, but the method only returns `true` if the block returns `true` in every iteration

```ruby
[1, 2, 3].all? do |num|
  num > 2
end
# => false
```

### `all?` in hash

```ruby
{ a: "ant", b: "bear", c: "cat" }.all? do |key, value|
  value.length >= 3
end
# => true
```

## 

## Enumerable#each_with_index

`each_with_index` is nearly identical to `each`: both take a block and execute the code within block and the block's return value is ignored. 

`each_with_index` always returns the original collection

`each_with_index` takes a second argument which represents index of each element

```ruby
[1, 2, 3].each_with_index do |num, index|
  puts "The index of #{num} is #{index}."
end
```



### each_with_index in hash

```ruby
{ a: "ant", b: "bear", c: "cat" }.each_with_index do |pair, index|
  puts "The index of #{pair} is #{index}."
end

# The index of [:a, "ant"] is 0.
# The index of [:b, "bear"] is 1.
# The index of [:c, "cat"] is 2.
# => { :a => "ant", :b => "bear", :c => "cat" }
```

first argument now represents an array containing the key-value pair.

## Enumarable#each_with_object

`each_with object` takes a block AND a method argument like so `[1, 2, 3].each_with_object([]) {block here}`

Method argument is a collection object that will be returned by the method

Method also takes 2 block arguments: 

1.  first arguments represents current element
2.  second argument represents the collection object that was passed in ([]) - an empty array in this case

```ruby
[1, 2, 3].each_with_object([]) do |num, array|
	array << num if num.odd?
end
# => [1, 3]
```

In the above example, an empty array is initialized in the block, inside the block we can now play with `array` , in this case we are just appending element to array if it's(`num`) odd.

### each_with_object in hash

Just like  `each_with_index` , the first block arguments represents an array that contains key-vale pair

```ruby
{a: "ant", b: "bear", c: "cat"}.each_with_object([]) do |pair, array|
  array << pair.last # last returns last element of array e.g. [a:, 'ant'] => 'ant'
end
# => ["ant", "bear", "cat"]
```

It's possible to use parentheses to capture the key and value in the first block argument like so

```ruby
{a: "ant", b: "bear", c: "cat"}.each_with_object({}) do |(key, value), hash|
  hash[value] = key
end
# => { "ant" => :a, "bear" => :b, "cat" => :c }
```

## Enumerable#first

`first` returns first element when no arguments are provided

`first(n)` returns first `n` elements

```ruby
[1, 2, 3].first
# => 1
```



### first on hash

In practice `first` is rarely called on hash, its more used on arrays

```ruby
{ a: "ant", b: "bear", c: "cat" }.first(2)
# => [[:a, "ant"], [:b, "bear"]]
```

* typically hashes are thought of as unordered lists, but since ruby 1.9, order is preserved according to order of insertion. 

* ruby returns a nested array, fortunately turning it back into hash is easy enough: `[[:a, "ant"], [:b, "bear"]].to_h`



## Enumerable#include?

`include?` doesn't take a block, but it takes an argument

`include?` returns `true` if the argument exists in the collection

```ruby
[1, 2, 3].include?(2)
# => true
```

### `include?` on hash

When called on hash, include checks only the keys

```ruby
{ a: "ant", b: "bear", c: "cat" }.include?("ant") # => false

{ a: "ant", b: "bear", c: "cat" }.include?(:a) # => true
```

In fact, it's essentially an alias for `Hash#key?` or `Hash#has_key?` and these are preferable as they make the intention more explicit!

## Hash#value?

`Hash#value?` or `Hash#has_value?` - we can use these methods to determine if the hash contains a certain value

## Enumerable#partition

`partition` divides up elements in the current collection into two new collections based on block's return value.

`**partition { |obj| block } → [ true_array, false_array ]**`

for example:

```ruby
[1, 2, 3].partition do |num|
  num.odd?
end
# => [[1,3], [2]]
```



### Parallel assignment and `partition`

using `partition` and parallel assignment to capture divided inner arrays

```ruby
odd, even = [1, 2, 3].partiton do |num|
	num.odd?
end
odd  # => [1, 3]
even # => [2]
```

### Partition always returns an array

```ruby
long, short = {a: "ant", b: "bear", c: "cat"}.partition do |key, value|
  value.size > 3
end
# => [[[:b, "bear"], [[:a, "ant"],[:c, "cat"]]]
```

we can, however, invoke `Array#to_h` method like so:

```ruby
long.to_h # => {:b=>"bear"}
short.to_h # => {:a=>"ant", :c=>"cat"}
```

