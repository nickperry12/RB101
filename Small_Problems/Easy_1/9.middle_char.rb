=begin

Get Middle Character

Write a method that takes a non-empty string argument, and returns the middle
character or characters of the argument. If the argument has an odd length, you
should return exactly one character. If the argument has an even length, you
should return exactly two characters.

P:

Input: String
Output: String

Restate the problem:

Writ a method that takes a string as an argument and returns the middle
character. If the string is an even length, return two characters, if it is odd,
return two characters.

Explicit Rules:

- If the string is odd in length, return one character
- If the string is even in length, return two characters

Implicit Rules:

- Spaces count as characters as seen in examples 1 and 2

Examples:

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'

D:

- We're wanting to iterate over the characters in the given string, we can use the
built in `String#chars` method to break the string into individual characters

- This method also stores all the characters into an array, and we can use
methods like `#select` to grab the characters we want

- Using these methods will return an array, so will have to figure out how we
convert to a string

- Use an if/else statement to handle whether we should be grabbing one or two
elements

A:

/* given a string */

1. split that string into chars
2. store the chars into an array
3. iterate over the array of chars
3a. if the size of the array is even, select the two middle chars
3b. if the size of the array is odd, select one middle char
3c. to check if the chars in the middle, divide the size of the array by 2
4. return the selected chars in string format


=end

def center_of(string)
  chars = string.chars
  middle_char = ''

  if chars.size.odd?
    middle_char << chars[chars.size / 2]
  elsif chars.size.even?
    middle_char << chars[chars.size / 2 - 1] + chars[chars.size / 2]
  end

  middle_char

end
    

p center_of('I love ruby') == 'e'
p center_of('Launch School') == ' '
p center_of('Launch') == 'un'
p center_of('Launchschool') == 'hs'
p center_of('x') == 'x'