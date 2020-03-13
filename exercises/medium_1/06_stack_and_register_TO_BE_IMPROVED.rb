# Write a method that implements a miniature stack-and-register-based programming language that has the following commands:

# n Place a value n in the "register". Do not modify the stack. | check
# PUSH Push the register value on to the stack. Leave the value in the register.
# ADD Pops a value from the stack and adds it to the register value, storing the result in the register.
# SUB Pops a value from the stack and subtracts it from the register value, storing the result in the register.
# MULT Pops a value from the stack and multiplies it by the register value, storing the result in the register.
# DIV Pops a value from the stack and divides it into the register value, storing the integer result in the register.
# MOD Pops a value from the stack and divides it into the register value, storing the integer remainder of the division in the register.
# POP Remove the topmost item from the stack and place in register
# PRINT Print the register value
# All operations are integer operations (which is only important with DIV and MOD).

# Programs will be supplied to your language method via a string passed in as an argument. Your program may assume that all programs are correct programs; that is, they won't do anything like try to pop a non-existent value from the stack, and they won't contain unknown tokens.

# You should initialize the register to 0.


def is_number?(object)
  object.to_i.to_s == object || object.to_f.to_s == object
end

def minilang(string)
  stack = []
  register = 0
  string.split.each do |command|
    if is_number?(command)
      register = command.to_i
      next
    end

    case command
    when 'PUSH' then stack << register
    when 'ADD' then register += stack.pop
    when 'SUB' then register -= stack.pop
    when 'MULT' then register *= stack.pop
    when 'DIV' then register /= stack.pop
    when 'MOD' then register %= stack.pop
    when 'POP' then register = stack.pop
    when 'PRINT' then puts register
    end
  end
  register
end




# ls way
def minilang(program)
  stack = []
  register = 0
  program.split.each do |token|
    case token
    when 'ADD'   then register += stack.pop
    when 'DIV'   then register /= stack.pop
    when 'MULT'  then register *= stack.pop
    when 'MOD'   then register %= stack.pop
    when 'SUB'   then register -= stack.pop
    when 'PUSH'  then stack.push(register)
    when 'POP'   then register = stack.pop
    when 'PRINT' then puts register
    else              register = token.to_i
    end
  end
end


# Further Exploration
# Try writing a minilang program to evaluate and print the result of this expression:

# (3 + (4 * 5) - 7) / (5 % 3)
# The answer should be 8. This is trickier than it sounds!
# Note that we aren't asking you to modify the #minilang method;
# we want you to write a Minilang program that can be passed to #minilang and evaluated.
minilang('3 PUSH 5 MOD PUSH 4 PUSH 5 MULT PUSH 3 ADD PUSH -7 ADD DIV PRINT')

# Add some error handling to your method. In particular, have the method detect empty stack conditions,
# and invalid tokens in the program, and report those.
# Ideally, the method should return an error message if an error occurs, and nil if the program runs successfully.

VALID_CONDITIONS = %w(ADD DIV MULT MOD SUB PUSH POP PRINT)

def is_number?(object)
  object.to_i.to_s == object || object.to_f.to_s == object
end

def valid_condition?(condition)
  VALID_CONDITIONS.include?(condition) || is_number?(condition)
end

def minilang(program)
  stack = []
  register = 0
  program.split.each do |token|
    if valid_condition?(token)
      case token
      when 'ADD'   then register += stack.pop
      when 'DIV'   then register /= stack.pop
      when 'MULT'  then register *= stack.pop
      when 'MOD'   then register %= stack.pop
      when 'SUB'   then register -= stack.pop
      when 'PUSH'  then stack.push(register)
      when 'POP'   then register = stack.pop
      when 'PRINT' then puts register
      else              register = token.to_i
      end
    else
      puts 'ERROR!'
  end

end


# Error reporting to be improved,
# use this as inspiration
ERRORS = {
  zero_div: "=> You are attempting to divide by 0. I suggest you don't.",
  empty_stack: "=> Your stack is empty, so you can't perform an operation.",
  invalid_token: "=> Your instructions contain an invalid token somewhere in the code.",
  zero_reg: "=> WARNING: Register is now 0, ensure you chose command excluding division"
  }
