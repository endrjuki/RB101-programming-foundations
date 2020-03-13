# Can you modify this method so the caller can request that the first character
# be downcased rather than upcased? If the first character is downcased,
# then the second character should be upcased, and so on.

# Hint: Use a keyword argument.

# Given method
def staggered_case(string)
  result = ''
  need_upper = true
  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end

# Further Explorations

def staggered_case(string, need_upper = true)
  result = ''

  string.chars.each do |char|
    if need_upper
      result += char.upcase
    else
      result += char.downcase
    end
    need_upper = !need_upper
  end
  result
end
