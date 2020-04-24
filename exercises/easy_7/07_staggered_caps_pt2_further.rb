# Modify this method so the caller can determine whether non-alphabetic characters
# should be counted when determining the upper/lowercase state.
# That is, you want a method that can perform the same actions that this method does,
# or operates like the previous version.

def staggered_case(str, count_only_alpha=true)
  alpha_char_count = 0
  str.split('').map do |char|
    if count_only_alpha
      if char =~ /[a-z]/i
        alpha_char_count += 1
        alpha_char_count.odd? ? char.upcase : char.downcase
      else
        char
      end

    else
      alpha_char_count +=1
      alpha_char_count.odd? ? char.upcase : char.downcase
  end
  .join('')
end

# ls solution

def staggered_case(str, count_only_alpha=true)
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
      if count_only_alpha
        result += char
      else
        need_upper ? result += char.upcase : result += char.downcase
        need_upper = !need_upper
      end

    end
  end
  result
end

# Modify this method so the caller can determine whether non-alphabetic characters
# should be counted when determining the upper/lowercase state.
# That is, you want a method that can perform the same actions that this method does,
# or operates like the previous version.

def staggered_case(string, count_only_alpha=true)
  result = ''
  needs_upper = true

  string.chars.each do |char|
    result << char.upcase if needs_upper
    result << char.downcase if !needs_upper
    
    case count_only_alpha
    when false then needs_upper = !needs_upper      
    when true  then needs_upper = !needs_upper if char =~ /[a-z]/i
    end
  end

  result
end

staggered_case('I Love Launch School!') == 'I lOvE lAuNcH sChOoL!'
staggered_case('ALL CAPS') == 'AlL cApS'
staggered_case('ignore 77 the 444 numbers') == 'IgNoRe 77 ThE 444 nUmBeRs'
