# Write a function that takes a string of parentheses, and determines if the
# order of the parentheses is valid. The function should return true if the
# string is valid, and false if it's invalid.

# Examples
# "()"              =>  true
# ")(()))"          =>  false
# "("               =>  false
# "(())((()())())"  =>  true
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string for an argument, and returns `true` or
`false` if the order of the string parentheses is valid; meaning an opening
parentheses is succeeded by a closing parentheses before another opening
appears. An opening parentheses should always appear before a closing.


Input: String

Output: Boolean

Explicit Rules:
- opening parentheses must come before a closing parentheses
- a closing parentheses must follow an opening


Implicit Rules:
- none implied


Modelling:

I: "hi(hi)()"
O: true

counter = 0
if the current char on iteration =~ '(' 
  increment counter by 1

if the current char =~ ')'
  decrement counter by 1

Break out of the loop if counter is less than 0
  - return false


---------------- Examples

p valid_parentheses("  (") == false
p valid_parentheses(")test") == false
p valid_parentheses("") == true
p valid_parentheses("hi())(") == false
p valid_parentheses("hi(hi)()") == true

---------------- Data Structures

I: String
Intermediate: Array
O: Boolean


---------------- Algorithm

/* given a string `str` */

Initialize `chars` to the split chars of `str`
Initialize `counter` to 0

Iterate through `chars`
  - If the current char matches an opening bracket
    - Increment `counter` by 1
  - If the current char matches a closing bracket
    - Decrement `counter` by 1
  - If `counter` is less than 0, break out of the loop

Return `true` if counter is equal to 0, `false` if not

=end

def valid_parentheses(str)
  chars = str.chars
  counter = 0

  chars.each do |char|
    break if counter < 0
    if char == '('
      counter += 1
    elsif char == ')'
      counter -= 1
    end
  end

  counter == 0
end


p valid_parentheses("  (") == false
p valid_parentheses(")test") == false
p valid_parentheses("") == true
p valid_parentheses("hi())(") == false
p valid_parentheses("hi(hi)()") == true