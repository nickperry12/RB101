# Define the method to calculate

def calculate(operation, number_one, number_two)
  if operation == 'add'
    number_one + number_two
  elsif operation == 'subtract'
    number_one - number_two
  elsif operation == 'multiply'
    number_one * number_two
  elsif operation == 'divide'
    number_one / number_two
  end
end

# First gather user input for numbers to be calculated
Kernel.puts("> Welcome to the calculator!")

Kernel.puts("> Please enter the first number of the equation:")
number_one = Kernel.gets().chomp().to_i()

Kernel.puts("> Please enter the second number of the equation")
number_two = Kernel.gets().chomp().to_i()

# Next, ask the user to which operation they would like to perform

Kernel.puts("> Please enter which operation you would like to perform: \n  add, subtract, multiply, or divide")
operation = Kernel.gets().chomp().downcase

puts "The result is #{calculate(operation, number_one, number_two)}!"