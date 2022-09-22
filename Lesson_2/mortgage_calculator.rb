require 'yaml'
MESSAGES = YAML.load_file('mortgage_messages.yml')

# method definitions for program

def float?(num)
  num == num.to_f.to_s
end

def integer?(num)
  num == num.to_i.to_s
end

def valid_number?(num)
  float?(num) || integer?(num)
end

def prompt(msg)
  puts "=> #{msg}"
end

def interest_calc(annual_rate)
  annual_rate.to_f / 100 / 12
end

def loan_calc(loan_years)
  loan_years.to_f * 12
end

def mortgage_payment(loan_months, loan_amount, monthly_interest)
  loan_amount.to_f * (monthly_interest.to_f / 
  (1 - (1 + monthly_interest.to_f)**(-loan_months.to_f)))
end

# Welcome the user to the mortgage calculator program

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = gets.chomp
  if name.empty?
    prompt(MESSAGES['invalid_name'])
  else
    break
  end
end

prompt("Hi #{name.strip}!")
prompt(MESSAGES['welcome_two'])

# main loop for calculator

loop do
  loan_amount = ''
  loop do
    prompt(MESSAGES['loan'])
    loan_amount = gets.chomp
    if valid_number?(loan_amount)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  annual_rate = ''
  loop do
    prompt(MESSAGES['annual_rate'])
    annual_rate = gets.chomp
    if valid_number?(annual_rate)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  loan_years = ''
  loop do
    prompt(MESSAGES['loan_years'])
    loan_years = gets.chomp
    if valid_number?(loan_years)
      break
    else
      prompt(MESSAGES['invalid'])
    end
  end

  prompt(MESSAGES['calculate'])
  loan_months = loan_calc(loan_years)
  monthly_interest = interest_calc(annual_rate)
  result = mortgage_payment(loan_months, loan_amount, monthly_interest)

  prompt("Your mortgage payment is $#{result.round(2)} per month.")
  
  prompt(MESSAGES['another_one'])
  answer = gets.chomp
  break if answer.downcase.start_with?('n')
  next if answer.downcase.start_with?('y')
end

prompt(MESSAGES['good_bye'])