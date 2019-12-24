 # calculator with bonus features
require 'yaml'
MESSAGES = YAML.load_file('mort_calc_messages.yml')

def messages(message, lang='en')
  MESSAGES[lang][message]
end

def prompt(message)
  Kernel.puts("=> #{message}")
end

def valid_number?(num)
  Float(num) rescue false
end

def valid_language?(lang)
  lang == 'en' || lang == 'es'
end

def operation_to_message(op)
  case op
  when '1'
    messages('adding', LANGUAGE)
  when '2'
    messages('subtracting', LANGUAGE)
  when '3'
    messages('multiplying', LANGUAGE)
  when '4'
    messages('dividing', LANGUAGE)
  end
end

def retrieve_number

  number = Kernel.gets().chomp()
  return number if valid_number?(number)
  prompt(messages('invalid_number', LANGUAGE))
end

  loop do
  Kernel.puts()
  
  LANGUAGE = Kernel.gets().chomp().downcase()

  if valid_language?(LANGUAGE)
    prompt(messages('welcome', LANGUAGE))
    break
  else
    Kernel.puts("=> Invalid language, please type in EN or ES.\n=> Idioma no válido, escriba EN o ES.)")
    
  end
end

name = ''
loop do
  name = Kernel.gets().chomp()
  if name.empty?()
    prompt(messages('invalid_name', LANGUAGE))
  else
    break
  end
end

prompt("#{messages('hi', LANGUAGE)} #{name}")

loop do # main loop
  
  
  prompt(messages('first_number', LANGUAGE))
  number1 = retrieve_number
  
  number2 = ''
  loop do
    prompt(messages('second_number', LANGUAGE))
    number2 = Kernel.gets().chomp()

    if valid_number?(number2)
      break
    else
      prompt(messages('invalid_number', LANGUAGE))
    end
  end

  prompt(messages('operation_prompt', LANGUAGE))

  operator = ''
  loop do
    operator = Kernel.gets.chomp()

    if %w(1 2 3 4).include?(operator) # array of strings
      break
    else
      prompt(messages('invalid_choice', LANGUAGE))
    end
  end

  prompt("#{operation_to_message(operator)} #{messages('two_numbers', LANGUAGE)}")

  result = case operator
           when '1'
             number1.to_i() + number2.to_i()
           when '2'
             number1.to_i() - number2.to_i()
           when '3'
             number1.to_i() * number2.to_i()
           when '4'
             number1.to_f() / number2.to_f()
           end

  prompt("#{messages('result', LANGUAGE)} #{result}!")

  prompt(messages('restart', LANGUAGE))
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(messages('thanks', LANGUAGE))
