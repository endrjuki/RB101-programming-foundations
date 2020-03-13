# Given this data structure write some code to return an array
# containing the colors of the fruits and the sizes of the vegetables.
# The sizes should be uppercase and the colors should be capitalized.

#[["Red", "Green"], "MEDIUM", ["Red", "Green"], ["Orange"], "LARGE"]

# Rules
# return an array that contains:
#  - colors of fruits
#  - sizes of vegetables

# Algo
# - iterate through the hash and map a new array
# - if type is 'fruit'
#   - iterate thrugh colors and map a new array with all colors capitalized (rtn val)
# - if type is 'vegetable'
#   - upcase the size (rtn val)



hsh = {
  'grape' => {type: 'fruit', colors: ['red', 'green'], size: 'small'},
  'carrot' => {type: 'vegetable', colors: ['orange'], size: 'medium'},
  'apple' => {type: 'fruit', colors: ['red', 'green'], size: 'medium'},
  'apricot' => {type: 'fruit', colors: ['orange'], size: 'medium'},
  'marrow' => {type: 'vegetable', colors: ['green'], size: 'large'},
}

hsh.map do |_, value|
  if value[:type] == 'fruit'
    value[:colors].map {|color| color.capitalize}
  else
    value[:size].upcase
  end
end
