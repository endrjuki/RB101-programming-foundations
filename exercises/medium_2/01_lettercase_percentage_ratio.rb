# Lettercase Percentage Ratio

# Write a method that takes a string, and then returns a hash that contains 3 entries:
# one represents the percentage of characters in the string that are lowercase letters,
# one the percentage of characters that are uppercase letters,
# and one the percentage of characters that are neither.

# Algorithm
# - Iterate through char array
#   - if char belong to lowercase , increment lowercase
#   - if char belong to uppercase, increment uppercase
#   - if char belongs to neither, increment neither


letter_percentages('abCdef 123') == { lowercase: 50, uppercase: 10, neither: 40 }
letter_percentages('AbCd +Ef') == { lowercase: 37.5, uppercase: 37.5, neither: 25 }
letter_percentages('123') == { lowercase: 0, uppercase: 0, neither: 100 }
HUNDREAD_PERCENT = 100

def letter_percentages(str)
  letters = Hash.new(0)
  str.chars.each do |char|
    if char =~ /[a-z]/
      letters[:lowercase] += 1
    elsif char =~ /[A-Z]/
      letters[:uppercase] += 1
    else
      letters[:neither] += 1
    end
  end


  result = Hash.new(0)
  letters.each do |letter_case, count|
    result[letter_case] =(count.to_f / letters.values.sum) * HUNDREAD_PERCENT)
  end
  result
end

# LS way

def letter_percentages(str)
  counts = Hash.new(0)
  percentages = Hash.new(0)
  characters = str.chars
  length = str.length

  counts[:uppercase] = characters.count { |char| char =~ /[A-Z]/}
  counts[:lowercase] = characters.count { |char| char =~ /[a-z]/}
  counts[:neither] = characters.count { |char| char =~ /[^a-z]/i}

  calculate(percentages, counts, length)

  percentages
end

def calculate(percentages, counts, length)
  percentages[:uppercase] = ((counts[:uppercase] / length.to_f) * 100).round(1)
  percentages[:lowercase] = ((counts[:lowercase] / length.to_f) * 100).round(1)
  percentages[:neither] = ((counts[:neither] / length.to_f) * 100).round(1)
end
