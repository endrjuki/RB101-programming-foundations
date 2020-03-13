# There are a few other characters that should be matching as well.
# Square brackets and curly brackets normally come in pairs.
# Quotation marks(single and double) also typically come in pairs and should be balanced.
# Can you expand this method to take into account those characters?

def balanced?(str)
  balance = 0

  str.chars.each do |char|
    balance -= 1 if %w(\) } ]).include?(char)
    balance += 1 if %w(\( { [).include?(char)
    return false if balance < 0
  end

  return false if str.count("'").odd? || str.count("\"").odd?
  balance == 0 ? true : false
end

balanced?('What[ (is)] this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

balanced?("what is this ''") == true
balanced?("what is this '") == false
