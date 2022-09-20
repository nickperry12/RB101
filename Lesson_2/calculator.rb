require 'pry'
require 'yaml'
MESSAGES = YAML.load_file('calculator_messages.yml')

# method to style our prompts

def prompt(message)
  Kernel.puts("=> #{message}")
end

# Define the method to calculate

def calculate(operator, number_one, number_two)
  case operator
  when '1'
    number_one.to_f + number_two.to_f
  when '2'
    number_one.to_f - number_two.to_f
  when '3'
    number_one.to_f * number_two.to_f
  when '4'
    number_one.to_f / number_two.to_f
  end
end

# this method will display our operation of choice in a message

def operator_to_message(operator)
  case operator
  when '1'
    'Adding'
  when '2'
    'Subtracting'
  when '3'
    'Multiplying'
  when '4'
    'Dividing'
  end
end

# These methods are used validate the users input
def integer?(num)
  num.to_i.to_s == num
end

def float?(num)
  num.to_f.to_s == num
end

def valid_number?(num)
  integer?(num) || float?(num)
end

# First gather user input for numbers to be calculated

prompt(MESSAGES['welcome'])

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt(MESSAGES['valid_name'])
  else
    break
  end
end

prompt("Hi #{name}!")

# Main calculator loop

loop do
  number_one = ''
  loop do
    prompt(MESSAGES['number_one'])
    number_one = Kernel.gets().chomp()

    if valid_number?(number_one) == true
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  number_two = ''
  loop do
    prompt(MESSAGES['number_two'])
    number_two = Kernel.gets().chomp()

    if valid_number?(number_two) == true
      break
    else
      prompt(MESSAGES['valid_number'])
    end
  end

  prompt(MESSAGES['which_operator'])

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt(MESSAGES['valid_operator'])
    end
  end

  prompt("#{operator_to_message(operator)} the two numbers...")

  prompt(MESSAGES['result'] + "#{calculate(operator, number_one, number_two)}!")

  prompt(MESSAGES['another_one'])
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt(MESSAGES['good_bye'])