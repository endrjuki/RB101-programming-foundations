# How would you order this array of hashes based on the year of publication of each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

# Solution

books.sort_by do |hash|
  hash[:published]
end

# here we use `sort_by` method to access a particular value by which to perform the sort

# all year values are 4 characters in length, so we don't need to transform them into integers for numerical
# comparison
