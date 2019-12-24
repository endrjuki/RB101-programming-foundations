# refactored
require 'yaml'
MESSAGES = YAML.load_file('mort_calc_messages.yaml')
MONTHS_IN_YEAR = 12

def prompt(message)
  Kernel.puts(message)
end

def valid_integer?(num)
  num.to_i().to_s() == num
end

def valid_float?(num)
  num.to_f().to_s() == num
end

def valid_amount?(num)
  valid_integer?(num) && num.to_i() > 0
end

def valid_interest?(num)
  (valid_integer?(num) || valid_float?(num)) && num.to_f > 0
end

def valid_duration?(num)
  valid_integer?(num) && num.to_i > 0
end

def valid_new_calc_answer?(answer)
  %w(y yes n no).include?(answer)
end

def apr_to_monthly_interest(num)
  num.to_f() / MONTHS_IN_YEAR
end

def loan_duration_to_months(years)
  years.to_i() * MONTHS_IN_YEAR
end

def retrieve_input(input_type)
  input = ''
  loop do
    prompt(MESSAGES["prompt_for_#{input_type}"])
    input = Kernel.gets().chomp()
    break if valid_input?(input_type, input)
    prompt(MESSAGES["invalid_#{input_type}"])
  end
  input
end

def valid_input?(input_type, input)
  case input_type
  when 'amount'
    valid_amount?(input)
  when 'apr'
    valid_interest?(input)
  when 'duration'
    valid_duration?(input)
  when 'new_calc'
    valid_new_calc_answer?(input)
  end
end

def new_calculation?(answer)
  answer == 'y' || answer == 'yes'
end

def monthly_payment(amount, interest, duration)
  amount.to_f() * (interest.to_f() / (1 - (1 + interest)**(-duration.to_f())))
end

loop do
  loan_amount = retrieve_input('amount').to_i()
  apr = retrieve_input('apr').to_f()
  duration_years = retrieve_input('duration').to_i()

  duration = loan_duration_to_months(duration_years)
  interest = apr_to_monthly_interest(apr) / 100.0
  monthly = monthly_payment(loan_amount, interest, duration)

  prompt("#{MESSAGES['monthly_payment']} #{monthly.round(2)}")

  answer = retrieve_input('new_calc')
  break unless new_calculation?(answer)
  system('clear') || system('cls')
end

prompt(MESSAGES['thanks_exit'])
