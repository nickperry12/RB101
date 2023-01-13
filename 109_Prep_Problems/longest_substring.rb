=begin

Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is
"aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need
to be efficient.

The input will only consist of lowercase characters and will be at least one
letter long.

If there are multiple solutions, return the one that appears first.

P:

Restate the question:

Create a method that takes a string as an argument, and returns a string that
represents the longest substring in alphabetical order. For example in the
string 'abcdporeiwtpo', the longest substring would be 'abcd'. 

Explicit Rules:

- the longest substring must be in alphabetical order
- return the first solution that appears
- all inputs will contain at least one character and will all be lowercase

Implicit Rules:

- The characters in the substring don't have to be right after each other in the
alphabet, they just have to be in order. This can be inferred from examble 1

- If the next character is the same as the previous, count that as alphabetical
order.

Input: String
Output: String

Examples:

p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'

D: 

- store our answer in a string, initialize the variable to an empty string, and
assign the current longest substring on each iteration to that variable,
and reassign when a longer substring is found

A:

/* given a string */

1. initiate var `counter` and set to 0
2. initiate var `substring` and set to ''
3. initiate `substring_arr` and set to []
4. if the character at str[counter] has a higher order value than the character
at the last index of `substring`, add that character to substring, and add 1
to counter
5. if it doesn't, add substring to `substr_arr`, set counter to 0 and set
substring to ``
6. after iterating through the given string, return the largest string in
`substr_arr`

=end

# first solution

def longest(str)
  counter = 0
  substring = str[counter]
  substring_arr = []
  return str if str.size == 1

  loop do
    counter += 1
    if str[counter].ord >= substring[-1].ord
      substring << str[counter]
    else
      substring_arr << substring
      substring = str[counter]
    end
    
    if counter == str.size - 1
      substring_arr << substring
      break
    end
  end

  answer = ''
  substring_arr.each do |string|
    if string.length > answer.length
      answer = string
    end
  end

  answer
end

# second solution

def longest(str)
  substrings = str.chars.slice_when { |a, b| a > b }.to_a
  substrings.map!(&:join)
  substrings.max_by(&:length)
end


p longest('asd') == 'as'
p longest('nab') == 'ab'
p longest('abcdeapbcdef') == 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') == 'aaaabbbbctt'
p longest('asdfbyfgiklag') == 'fgikl'
p longest('z') == 'z'
p longest('zyba') == 'z'


# Marks Solution


=begin
Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is
"aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need
to be efficient.

The input will only consist of lowercase characters and will be at least one
letter long.

If there are multiple solutions, return the one that appears first.

***Understand the problem*** **Plan** 1.Restate the Question
  - receive a str, return the longest alphaberical substring that appears first
  2.Identify the operations 
  - return the substr that is the longest 
  3. String 
  - check every letter
  - if the letter is in alphabetical order, make that char part of substr 
  - if it is not in alphabetical order, I will have a new substr where the
current char is the start of it **Explicit Reqs**
- input str will only have lowercase chars and will be at least one letter long
**Implicit Reqs** **Rules/Notes** ***Examples/Test Cases*** 'zyba'
  - 'z'

'nab'
- n 
- ab 
- b 

'asdfaaaabbbbcttavvfffffdf'
  - 'a' 

'asdfbyfgiklag'
  - 2, 4, 6, 11, ***Algorithm***
1. receive the str `str`
2. create a var `answer` and assign [] to it 
3. create a var `counter` and assign 0 to it 
4. create a var `substr` and assign the item at index counter to it 
  - keep adding counter by 1 and the item to substr, UNTIL the item at counter
    is not in alphabetical order to the latest item in substr
    - when that happens make the current index the only item in substr and
      before that addd the current susbtr to answer 
=end

def longest(str)
  answer = []
  counter = 0 
  substr = "#{str[counter]}"
  return str if str.size == 1 
  loop do 
    counter += 1
    if str[counter].ord >= substr[-1].ord 
      substr << str[counter]
    else 
      answer << substr 
      substr = "#{str[counter]}" 
    end
     if counter >= str.size - 1
      answer << substr 
      break
     end 
  end
  answer.max_by { |obj| obj.length }
end 