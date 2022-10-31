=begin

How old is Teddy?
Build a program that randomly generates and prints Teddy's age. To get the age, you should generate a random number between 20 and 200.

Example Output

Copy Code
Teddy is 69 years old!
Hint
You may find the rand method useful. It is documented in the Kernel module.

Understanding the problem:

- Program randomly generates teddy's age
- the number should randomize between 20 and 200
  - should include both end ranges
- It should also output a message to the screen displaying teddy's age

Explicit Rules:
- To find age, randomize between 20 and 200
- Should include both 20 and 200 as possible outcomes
- Program shouldn't take an arguments

Implicit Rules:
- Output should be a message to the screen
- Should display his age as an Integer

Data Structures:
Output: String with string interpolation to display the ArgumentError

Algorithm:

Create a method called: 'teddys_age'
- in this method we want to randomize his age
  - randomize between 20 and 200
- we want to store this result into a variable called 'age'
- print out the result in the form of a String
  - display age as a number

=end

def teddys_age()
  age = rand(20..200)
  puts "Teddy is #{age}!"
end

teddys_age()