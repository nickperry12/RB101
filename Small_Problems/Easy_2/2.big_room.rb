=begin
How big is the room?

Build a program that asks a user for the length and width
of a room in meters and then displays the area of the room in both square meters
and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

P:

We need to build a program that calculates two things:
- the area of the room in square meters
- the square footage

To calcuate the area
- length in meters * width in meters

To calculate the square footage
- square meters * 10.7639

The program should also prompt the user for length and width

Explicit Rules:
- integers are provided by user input
- unit for area is square meters
- unit for square footage is sqft
- don't need to validate input

Implicit Rules:
- need to output the results in the form of a message to the user
- meters should be rounded to the tenth digit
- square feet should be rounded to the hundredth digit

E:

Enter the length of the room in meters:
10
Enter the width of the room in meters:
7
The area of the room is 70.0 square meters (753.47 square feet).

D:

Input: Integer
Output: String with string interoplation to display the results

A:
High Level

prompt the user to enter two integers
- length and width

create a method called room_size that takes two arguments
using the given integers
- multiply the length by the width to calculate the area
- multiply the area by 10.7639 to get the square footage
- print the results to the screen
=end

def room_size(num, num_2)
  area = num * num_2
  sqft = area * 10.7639
  puts "The area of the room is #{num.round(1)} square meters."
  puts "The square footage of the room is #{sqft.round(2)}sqft."
end

puts "Please enter the length:"
length = gets.chomp.to_f

puts "Please enter the width:"
width = gets.chomp.to_f

room_size(length, width)