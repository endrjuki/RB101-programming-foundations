# Using the multiply method from the "Multiplying Two Numbers" problem,
# write a method that computes the square of its argument
# (the square is the result of multiplying a number by itself).

def multiply(n1, n2)
  n1 * n2
end

def square(n)
  multiply(n, n)
end

# Further Exploration
# What if we wanted to generalize this method to a "power to the n" type method:
# cubed, to the 4th power, to the 5th, etc.
# How would we go about doing so while still using the multiply method?

def power(n, power)
  multiply(n, n)
end

def power(n, power)
  multiply(n, n**(power-1))
end


# Jason Lybrands solution

def multiply(num1, num2)
  num1 * num2
 end
 
 def exponent(n1, n2)
   multiply(n1,1) ** multiply(1,n2)
 end
 
 exponent(5,2) == power(5, 2)
 exponent(7,3) == power(7, 3)
 exponent(9,4) == power(9, 4)

 exponent(-3, -7) == power(-3, -7)
 
