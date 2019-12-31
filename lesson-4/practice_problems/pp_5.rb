# what does shift do in the following code?
# How can we find out?

hash = { a: 'ant', b: 'bear' }
hash.shift

# shift will remove the first key-value pair of the hash and return it as an array like so:
# [:a, 'ant']
