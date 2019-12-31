# How does count treat the block's return value?
# How can we find out?
['ant', 'bat', 'caterpillar'].count do |str|
  str.length < 4
end

# `array#count` method uses block's return value to count the number of elements for
# which the block returns a true value.
# we can find out by looking it up in documentation

# count considers truthiness of block's return value, only counts an element, if the block
# returns a truthy value
