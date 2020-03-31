# Write a method that takes two arguments,
# a positive integer and a boolean,
# and calculates the bonus for a given salary.
# If the boolean is true, the bonus should be half of the salary.
# If the boolean is false, the bonus should be 0.

# Input
# - integer
#   - represents salary
# - boolean
#   - if true -> entitled to bonus, which is half of the salary

# Output
# - integer
#   - represents bonus amount

def calculate_bonus(salary, bonus)
  bonus ? salary / 2.0 : 0
end
