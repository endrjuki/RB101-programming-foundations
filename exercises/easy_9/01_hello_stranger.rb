# Create a method that takes 2 arguments, an array and a hash.
# The array will contain 2 or more elements that,
# when combined with adjoining spaces, will produce a person's name.
# The hash will contain two keys, :title and :occupation,
# and the appropriate values.
# Your method should return a greeting that uses the person's full name,
# and mentions the person's title and occupation.

# Example
# greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
# => Hello, John Q Doe! Nice to have a Master Plumber around.

# Input
# - array
#   - contains 2+ elements
#   - person's full name
# - hash
#   - contains 2 keys and appropriate values:
#     - :title
#     - :occupation
#

def greetings(name_array, details_hash)
  message = "Hello, #{name_array.join(' ')}! Nice to have a"
  message +=" #{details_hash[:title]} #{details_hash[:occupation]} around."
  puts message
end

greetings(['John', 'Q', 'Doe'], { title: 'Master', occupation: 'Plumber' })
