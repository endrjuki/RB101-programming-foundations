# In this exercise, you will write a method named xor that takes two arguments,
# and returns true if exactly one of its arguments is truthy, false otherwise.

#xor?(5.even?, 4.even?) == true
#xor?(5.odd?, 4.odd?) == true
#xor?(5.odd?, 4.even?) == false
#xor?(5.even?, 4.odd?) == false

# Input
# Output
# Rules
# Algorithm

def xor?(s1, s2)
  if s1 == true && s2 == false
    true
  elsif s2 == true && s1 == false
    true
  else
    false
  end
end


#ls solution
def xor?(value1, value2)
  return true if value1 && !value2
  return true if value2 && !value1
  false
end

def xor?(value1, value2)
  (value1 && !value2) || (value2 && !value1)

#Paul Zengs solution
def xor?(boolean1, boolean2)
  boolean1 != boolean2
end
