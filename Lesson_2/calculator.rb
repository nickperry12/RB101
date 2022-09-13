# method to style our prompts

def prompt(message)
  Kernel.puts("=> #{message}")
end

# Define the method to calculate

def calculate(operator, number_one, number_two)
  case operator
  when '1'
    number_one + number_two
  when '2'
    number_one - number_two
  when '3'
    number_one * number_two
  when '4'
    number_one / number_two
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

# This method will check if the number is valid

def valid_number?(num)
  num.to_f != 0
end

# First gather user input for numbers to be calculated

prompt("Welcome to the Calculator! Enter your name:")

name = ''
loop do
  name = Kernel.gets().chomp()

  if name.empty?()
    prompt("Make sure to use a valid name.")
  else
    break
  end
end

prompt("Hi #{name}!")

loop do # main loop
  number_one = ''
  loop do
    prompt("Please enter the first number of the equation:")
    number_one = Kernel.gets().chomp().to_f

    if valid_number?(number_one)
      break
    else
      prompt("That number is not valid. Please enter a valid number.")
    end
  end

  number_two = ''
  loop do
    prompt("Please enter the second number of the equation:")
    number_two = Kernel.gets().chomp().to_f

    if valid_number?(number_two)
      break
    else
      prompt("That number is not valid. Please enter a valid number.")
    end
  end

  # Next, ask the user to which operation they would like to perform

  operator_prompt = <<-MSG
  What operation would you like to perform?
  1) add
  2) subtract
  3) multiply
  4) divide
  MSG

  prompt(operator_prompt)

  operator = ''
  loop do
    operator = Kernel.gets().chomp()

    if %w(1 2 3 4).include?(operator)
      break
    else
      prompt("Please enter a valid operator. Must choose 1, 2, 3, or 4.")
    end
  end

  prompt("#{operator_to_message(operator)} the two numbers...")

  prompt("The result is #{calculate(operator, number_one, number_two)}!")

  prompt("Do you want to perform another calculation? ('Y' or 'N')")
  answer = Kernel.gets().chomp()
  break unless answer.downcase().start_with?('y')
end

prompt("Thank you for using the Calculator! Good-bye.")