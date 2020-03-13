# Write a method that takes two arguments: the first is the starting number,
# and the second is the ending number.
# Print out all numbers between the two numbers,
# except if a number is divisible by 3, print "Fizz",
# if a number is divisible by 5, print "Buzz", and finally
# if a number is divisible by 3 and 5, print "FizzBuzz".

def fizzbuzz(n1, n2)
  Array(n1..n2).map do |num|
    if num % 3 == 0 && num % 5 == 0
      'FizzBuzz'
    elsif num % 3 == 0
      'Fizz'
    elsif num % 5 == 0
      'buzz'
    else
      num
    end
  end
  .join(', ')
end



# Examples/Test Cases
fizzbuzz(1, 15) # -> 1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz


# ls method
def fizzbuzz_value(num)
  case
  when num % 3 == 0 && num % 5 == 0
    'Fizzbuzz'
  when num % 3 == 0
    'Fizz'
  when num % 5 == 0
    'Buzz'
  else
    num
  end
end

def fizzbuzz(starting_num, ending_number)
  result = []
  starting_num.upto(ending_number) do |number|
    result << fizzbuzz_value(number)
  end
  result
end
