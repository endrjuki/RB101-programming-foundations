def substrings(str)
  result = []
  start_idx = 0
  end_idx = start_idx + 1

  loop do
    break if start_idx == str.size

    loop do
      break if end_idx == str.size
      result << str[start_idx..end_idx]
      end_idx += 1
    end

  start_idx += 1
  end_idx = start_idx + 1
  end
  result
end

def is_palindrome?(str)
  str == str.reverse
end

def palindrome_substrings(str)
  result = []
  substrings_arr = substrings(str)
  substrings_arr.each do |substring|
    result << substring if is_palindrome?(substring)
  end
  result
end
  

# shorter method for finding substrings

def substrings2(str)
  result[]
  0.upto(str_size - 2).each do |start_idx|
    (start_idx + 1).upto (str.size - 1) do |end_idx|
      result << str[start_idx..end_idx]
    end
  end
  result
end
