# Modify the method from the previous exercise so it ignores non-alphabetic characters
# when determining whether it should uppercase or lowercase each letter.
# The non-alphabetic characters should still be included in the return value;
# they just don't count when toggling the desired case.

# Modify the method from the previous exercise so it ignores non-alphabetic characters
# when determining whether it should uppercase or lowercase each letter.
# The non-alphabetic characters should still be included in the return value;
# they just don't count when toggling the desired case.

# Algorithm
# - initalize var alpha_char_count = 0
# - split string into char array
# - map over array:
#   - if char matches regex /a-z/i:
#     - increment the alpha_char_counter by one
#     - char.upcase if alpha_char_count.odd?
#     - char.downcase if alpha_char_count.even?
#   - else return char

def staggered_case(str)
  alpha_char_count = 0
  str.split('').map do |char|
    if char =~ /[a-z]/i
      alpha_char_count += 1
      alpha_char_count.odd? ? char.upcase : char.downcase
    else
      char
    end
  end
  .join('')
end

# ls solution

def staggered_case(str)
  result = ''
  need_upper = true
  str.chars.each do |char|
    if char =~ /[a-z]/i
      if need_upper
        result += char.upcase
      else
        result += char.downcase
      end
      need_upper = !need_upper
    else
      result += char
    end
  end
  result
end



staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
