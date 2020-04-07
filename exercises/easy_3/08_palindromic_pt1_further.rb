# Write a method that returns true if the string passed as an argument is a palindrome,
# false otherwise. A palindrome reads the same forward and backward.
# For this exercise, case matters as does punctuation and spaces.

palindrome?('madam') == true
palindrome?('Madam') == false          
palindrome?("madam i'm adam") == false 
palindrome?('356653') == true

#def palindrome?(string)
  #string == string.reverse
#end

def palindrome_array?(arr)
  reverse_arr = []
  arr.reverse.each {|n| reverse_arr << n}
  arr == reverse_arr
end

  def palindrome?(object)
    string = ''
    counter = 0
    loop do
      break if counter == object.size
      string << object[counter]
      counter += 1
    end

    reverse_string = ''
    counter = 0
    loop do
      counter -= 1
      reverse_string << object[counter]
      break if counter == -(object.size)
    end

    string == reverse_string
  end
