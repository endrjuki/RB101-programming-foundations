# modify the method/methods to ignore non-alphanumeric characters and case

def char_alphanumeric?(char)
  char =~ /[a-z0-9]/i
end

def substrings_at_start(str)
  result = []
  str = str.split('').select {|char| char_alphanumeric?(char)}.join('').downcase     # modified this
  0.upto(str.size - 1) do |index|
    result << str[0..index]
  end
  result
end

def substrings(str)
  result = []
  0.upto(str.size - 1) do |index|
    result.concat(substrings_at_start(str[index..-1]))
  end
  result
end

def is_palindrome?(str)
  str == str.reverse && str.size != 1
end

def palindromes(str)
  substrings(str).select {|sub_string| is_palindrome?(sub_string)}
end


# Examples / Test Cases
palindromes('hello-madaM-did-mad^am-goodbye')
