# What is the return value of each_with_object in the following code?
# Why?

['ant', 'bear', 'cat'].each_with_object({}) do |value, hash|
  hash[value[0]] = value
end

# return value: {"a"=>"ant", "b"=>"bear", "c"=>"cat"}

# each_with_object returns a collection object that was passed in as methods argument
# block argument 1 represents current element
# block argument 2 represents the collection object that was passed in as methods argument
# `value[0]` is assigned to the first character of the current element
# `hash[value[0]] = value` assigns the first character of the current element as a key,
# and current element as its value, and stores it in {} hash.

