# Write a method that takes a string as argument,
# and returns true if all parentheses in the string are properly balanced,
# false otherwise. To be properly balanced, parentheses must occur in matching '(' and ')' pairs.

# Input
# - String
# Output
# - Boolean

# Rules
# - every parenthesis in string must occur in matching '(' and ')' pairs - return true if so
# - return true if there are no parenthesis present

# Algorithm
# - initialize variable 'balance' to integer 0
# - iterate through the character array
#   - if current char '(', increment balance by 1
#   - elsif           ')' decrement balance by 1
#   - if at any point balance is negative, return false
# - after last iteration is complete, evaluate balance
#   - if 0, return true
#   - else  return false

def balanced?(str)
  balance = 0
  str.chars.each do |char|
    balance -= 1 if char == ')'
    balance += 1 if char == '('
    return false if balance < 0
  end

  balance == 0 ? true : false
end

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false
