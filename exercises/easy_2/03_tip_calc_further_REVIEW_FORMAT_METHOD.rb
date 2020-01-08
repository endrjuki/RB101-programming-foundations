# Create a simple tip calculator.
# The program should prompt for a bill amount and a tip rate.
# The program must compute the tip and then display both
# the tip and the total amount of the bill.
# Example:
# What is the bill? 200
# What is the tip percentage? 15

# The tip is $30.0
# The total is $230.0

puts "What is the bill?"
bill = gets.to_f
puts "What is the tip percentage?"
tip_percentage = gets.to_f

tip = (bill * tip_percentage / 100).round(2)
total = bill + tip

puts "The tip is $#{format("%.2f", tip)}"
puts "The total is $#{format("%.2f", total)}"
