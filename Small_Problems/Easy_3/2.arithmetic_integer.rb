=begin

Write a program that prompts the user for two positive integers, and then prints
the results of the following operations on those two numbers: addition,
subtraction, product, quotient, remainder, and power. Do not worry about
validating the input.

P:

Write a program that does the following:
- prompts the user for two integers
- performs the following operations:
1) addition
2) subtraction
3) product
4) division
5) modulo
6) exponent

The result of each operation should be printed to the screen.

Don't need to validate the input, can just assume that all integers entered
will be positive.

Explicit Rules:
- all numbers must be positive
- need to perform all 6 operations

Implicit Rules:
- numbers should be whole numbers
- use integers not floats
- result should be printed in the form of a message

E:

==> Enter the first number:
23
==> Enter the second number:
17
==> 23 + 17 = 40
==> 23 - 17 = 6
==> 23 * 17 = 391
==> 23 / 17 = 1
==> 23 % 17 = 6
==> 23 ** 17 = 141050039560662968926103

D:

Input: Integer
Output: String, with given integers and result interpolated into the string

A (High Level):

create a method called prompt that takes one argument
- prepend strings passed in with ==>

create a method called math_operations that takes two arguments (both integers)
- initialize the following variables and assign the following values
1) `sum` = `num1` + `num2`
2) `difference` = `num1 - `num2`
3) `product` = `num1` * `num2`
4) `quotient` = `num1` / `num2`
5) `remainder` = `num1` % `num2`
6) `exponent` = `num1` ** `num2`
- output the result of each operation in the form of a string



prompt the user to enter the first number
- initialize variable `num_1` and assign user input to it
- convert input to an integer

prompt the user to enter the second number
- initialize variable `num_2` and assign user input to it
- convert input to an integer
=end

def prompt(string)
  puts "==> #{string}"
end

def math_operations(num1, num2)
  sum = num1 + num2
  difference = num1 - num2
  product = num1 * num2
  quotient = num1 / num2
  remainder = num1 % num2
  power = num1 ** num2

  results = {'+' => sum,
  '-' => difference,
  '*' => product,
  '/' => quotient,
  '%' => remainder,
  '**' => power,
  }

  results.each do |operation, result|
    prompt("#{num1} #{operation} #{num2} = #{result}")
  end
end

prompt("Please enter the first number:")
num1 = gets.chomp.to_i

prompt("Pleaes enter the second number:")
num2 = gets.chomp.to_i

math_operations(num1, num2)