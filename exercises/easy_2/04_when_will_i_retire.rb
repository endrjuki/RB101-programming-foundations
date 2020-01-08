# Build a program that displays when the user will retire
# and how many years she has to work till retirement.
# Example:
# What is your age? 30
# At what age would you like to retire? 70

# It's 2016. You will retire in 2056.
# You have only 40 years of work to go!

#Time.now.year for current year

puts "What is your age?"
age = gets.to_i

puts "At what age would you like to retire?"
retirement_age = gets.to_i

years_remaining = retirement_age - age
retire_year = Time.now.year + years_remaining

puts "It's #{Time.now.year}. You will retire in #{retire_year}"
puts "You have only #{years_remaining} years of work to go!"

