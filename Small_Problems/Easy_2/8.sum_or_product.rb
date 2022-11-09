=begin
Sum or Product of Consecutive Integers Write a program that asks the user to
enter an integer greater than 0, then asks if the user wants to determine the
sum or product of all numbers between 1 and the entered integer.

Examples:

>> Please enter an integer greater than 0: 5 Enter 's' to compute the sum, 'p'
to compute the product. s The sum of the integers between 1 and 5 is 15.


>> Please enter an integer greater than 0: 6 Enter 's' to compute the sum, 'p'
to compute the product. p The product of the integers between 1 and 6 is 720.

P:

Prompt the user to enter a number Prompt user to choose whether to get the sum
or product of all numbers between 1 and the given number (`n`)

In our calculation we are going to take the current number and either add or
multiply the next number until we iterate through the entire range of numbers


Input: Integer

Output: String with the sum or product of the `n` and numbers between 1 and `n`

Explicit Rules:
- Gather user input
- Number given will be used for our calculation

Implicit Rules:
- Need to convert the input to an integer

A:

prompt user for input initialize variable `n` to the user input prompt user to
choose either sum or product
- initialize variable `choice` to that input

create a method `sum_or_product` that takes two arguments (given number and sum
or product)
- intialize `counter` to 0
- initialize an empty array 
  - array will contain integers from 1 to `n`
  - if user selected Sum
    - add the next number to the current number
    - add 1 to the counter
    - stop iterating when counter = `n` - 2
  - do the same if they choose product, except multiply instead of add

=end

def sum_or_product(num, user_choice)
  range_of_numbers = (1..num).to_a
  if user_choice == 's'
    sum = range_of_numbers.sum
    puts "The sum of 1 to #{num} is #{sum}."
  elsif user_choice == 'p'
    product = range_of_numbers.inject(:*)
    puts "The product of 1 to #{num} is #{product}."
  end
end

loop do
  user_choice = ''
  num = ''
  
  loop do
    puts "Please enter a number greater than zero:"
    num = gets.chomp.to_i
    if num > 0
      break
    else
      puts "That is an invalid number. Please enter a number greater than zero."
    end
  end

  
  loop do
    puts "Would you like the sum or the product? Please enter 's' or 'p'"
    user_choice = gets.chomp
    if user_choice == 's' || user_choice == 'p'
      break
    else
      puts "Invalid choice. Please type either 's' or 'p'."
    end
  end

  sum_or_product(num, user_choice)

  puts "Would you like to do another calculation?"
  continue = gets.chomp.downcase
  if continue == 'y' || continue == "yes"
    next
  else
    puts "Have a great day."
    break
  end
end