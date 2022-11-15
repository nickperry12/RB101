=begin

Searching 101 

Write a program that solicits 6 numbers from the user, then prints
a message that describes whether or not the 6th number appears amongst the first
5 numbers.

P:

We are creating a program that collects 6 numbers from the user.
We are storing the first 5 numbers into a collection, and checking to see if
the 6th number provided, is in that collection. The output should be a message
telling the user whether or not that number appears in the first 5 numbers.

- Prompt user for 6 numbers
- Enter the first 5 into the collection
- Check to see if the 6th number is included in that collection
- Print out a message to the screen describing the result

Explicit Rules:
- User must enter 6 numbers
- Must check to see if the 6th number appears in the first five

Implicit Rules:
- Numbers must be an integer object, not a string
- User input must be converted to an Integer

E:

==> Enter the 1st number:
25
==> Enter the 2nd number:
15
==> Enter the 3rd number:
20
==> Enter the 4th number:
17
==> Enter the 5th number:
23
==> Enter the last number:
17
The number 17 appears in [25, 15, 20, 17, 23].

First 5 numbers entered: 20, 22, 1, 5, 33
6th entered number: 22
Message: The number 22 appears in the first 5 numbers (list numbers)

D:

Input: Integer, stored in an array
Output: String, using string interpolation to display the 6th number and the
array of the first 5 numbers

A (High Level):

Initialize variable `first_five` and assign an empty array object to it

Prompt the user to enter a number
- repeat this 5 times
- append the numbers to the `first_five` array

Prompt the user to enter a 6th number
- Check to see if `first_five` contains `number_six`
- if it does, tell the user that number appears in the `first_five` array
- if it doesn't, tell the user that number does not appear in the array

C:
=end

def prompt(string)
  puts "==> #{string}"
end

first_five = []
counter = 1

until first_five.size == 5
  case counter
  when 1
    prompt("Please enter the first number:")
    first_five << gets.chomp.to_i
  when 2
    prompt("Please enter the second number:")
    first_five << gets.chomp.to_i
  when 3
    prompt("Please enter the third number:")
    first_five << gets.chomp.to_i
  when 4
    prompt("Please enter the fourth number:")
    first_five << gets.chomp.to_i
  when 5
    prompt("Please enter the fifth number:")
    first_five << gets.chomp.to_i
  end
  counter += 1
end

prompt("Please enter the sixth number:")
number_six = gets.chomp.to_i

if first_five.include?(number_six)
  puts "The number #{number_six} appears in #{first_five}."
else
  puts "The number #{number_six} does not appear in #{first_five}."
end