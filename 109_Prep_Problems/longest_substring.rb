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

Possible methods and data structures to iterate: 

- array of characters of the given string and use `each` to iterate over it
- iterating over the string with `each`

start_idx[0]
second_idx[1]

A:

/* given a string */

- initiate var `longest_substr` and set to []
- initiate var `current_substr` and set to []
- initiate `start_idx` to 0
- initiate `second_idx` to 0
- split the string into chars
- add the first char into `current_substr`
- iterate over the chars and check to see if order of the second idx is greater
than or equal to the order of the start idx
- if it is, add that char to `current_substr` and increment `second_idx` by 1
- repeat the order check until the order value of `second_idx` is less than
`start_idx`
- if the order value is less, reassign `start_idx` to equal `second_idx` and
increment `second_idx` by 1, assign the value of `current_substr` to
`longest_substr` if the size of `current_substr` is greater
- join the `longest_substr` array and return it
=end

def longest(str)
  longest_substr = []
  current_substr = []
  start_idx = 0
  second_idx = 1
  chars = str.chars
  return str if str.size == 1

  loop do
    current_substr << chars[start_idx]
    if chars[second_idx].ord >= chars[start_idx].ord
      current_substr << chars[second_idx]
      start_idx += 1
      second_idx += 1
    elsif chars[second_idx].ord < chars[start_idx].ord
      start_idx = second_idx
      second_idx += 1
      longest_substr = current_substr
      current_substr = []
    end
    break if second_idx > chars.size - 1
  end
  
  longest_substr
end


p longest('asd') #== 'as'
p longest('nab') #== 'ab'
p longest('abcdeapbcdef') #== 'abcde'
p longest('asdfaaaabbbbcttavvfffffdf') #== 'aaaabbbbctt'
p longest('asdfbyfgiklag') #== 'fgikl'
# p longest('z') == 'z'
p longest('zyba') #== 'z'


# Marks Solution


=begin
Find the longest substring in alphabetical order.

Example: the longest alphabetical substring in "asdfaaaabbbbcttavvfffffdf" is "aaaabbbbctt".

There are tests with strings up to 10 000 characters long so your code will need to be efficient.

The input will only consist of lowercase characters and will be at least one letter long.

If there are multiple solutions, return the one that appears first.

***Understand the problem***
**Plan**
  1.Restate the Question
  - receive a str, return the longest alphaberical substring that appears first 
  2.Identify the operations 
  - return the substr that is the longest 
  3. String 
  - check every letter
  - if the letter is in alphabetical order, make that char part of substr 
  - if it is not in alphabetical order, I will have a new substr where the current char is the start of it 
**Explicit Reqs**
- input str will only have lowercase chars and will be at least one letter long 
**Implicit Reqs**
**Rules/Notes**
***Examples/Test Cases***
'zyba'
  - 'z'

'nab'
- n 
- ab 
- b 

'asdfaaaabbbbcttavvfffffdf'
  - 'a' 

'asdfbyfgiklag'
  - 2, 4, 6, 11, 
***Algorithm***
1. receive the str `str`
2. create a var `answer` and assign [] to it 
3. create a var `counter` and assign 0 to it 
4. create a var `substr` and assign the item at index counter to it 
  - keep adding counter by 1 and the item to substr, UNTIL the item at counter is not in alphabetical order to the latest item in substr
    - when that happens make the current index the only item in substr and before that addd the current susbtr to answer 
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