=begin

Greeting a user

Write a program that will ask for user's name. The program will
then greet the user. If the user writes "name!" then the computer yells back to
the user.

P:
- Program needs to prompt the user to enter their name, and then must output
a greeting message to the user

- If the user enters their name and adds a (!), then the output of the greeting
should be upper case and ask why they (both the user and the program) are
screaming

- Need to create a method that will determine the output message based on
whether the input string contains a (!)

- Need to validate user input. If it contains digits or an object that isn't
a string, the user should be prompted to re-enter their name and to only include
alphabetical characters

Explicit Requirements:
- If an (!) is at the end of the name, greeting output should be upcased and ask
why they are screaming

- If there is no (!), then the greeting should be "Hello" + users name

Implicit Requirements:
- The first letter of the users name should always be capitalized in our output
- No other symbols aside from (!) should be allowed in the input
- Name should contain only alphabetical characters, no digits

E:

What is your name? Bob
Hello Bob.

What is your name? Bob!
HELLO BOB. WHY ARE WE SCREAMING?

D:

Input: String
Output: String with string interpolation

A:
High Level Algo

- prompt the user for their name

- create a method called greeting that takes on argument (a string)
- check to see if the string includes a (!)
 - if it does, greet the user and ask why we are screaming
 - if there is no (!), greet the user normally
=end

def greeting(string)
  if string.include?('!')
    string = string.chop
    puts "HELLO #{string.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{string.capitalize}."
  end
end

# Further Exploration
# Try modifying our solution to use String#chomp! and String#chop!, respectively

def destructive_greeting(string)
  if string.include?('!')
    string.chop!
    puts "HELLO #{string.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{string.capitalize}."
  end
end

def destructive_greeting_two(string)
  if string.include?('!')
    string.chomp!('!')
    puts "HELLO #{string.upcase}. WHY ARE WE SCREAMING?"
  else
    puts "Hello #{string.capitalize}."
  end
end

puts "What is your name?"
user_input = gets.chomp

# greeting(user_input)
destructive_greeting(user_input)
# destructive_greeting_two(user_input)