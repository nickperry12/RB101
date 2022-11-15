=begin
How old is Teddy?

Build a program that randomly generates and prints Teddy's
age. To get the age, you should generate a random number between 20 and 200.

Example Output

Teddy is 69 years old!

P:

- Need to build a program that does the following:
  - randomly generates a number
  - prints the number to the screen
  - the random number should between 20 and 200

Explicit Rules:

- Number is randomized between 20 and 200 (does this include 20 and 200?)
- Number should be printed to the screen in a message

Implicit Rules:

- None inferred

Examples:

Teddy is 69 years old!

D:

Input: Range of numbers betwen 20 and 200
Output: String with string interpolation

A:

Given a range of numbers between 20 and 200
- randomize a number in this range
- print the randomized number in a message telling the user Teddy's age
=end

puts "Teddy's age is #{rand(2...200)}!"