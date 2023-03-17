=begin
---------------- Problem

Write a method that takes a string as an argument, and returns true if all
parentheses in the string are properly balanced, false otherwise. To be properly
balanced, parentheses must occur in matching '(' and ')' pairs.

Restate the problem:

Create a method that accepts a string for an argument, and iterates through the
string to find balanced pairs of parentheses. For each '(' there must be a ')'.
Return `true` if the amount of opening brackets is equal to the amount of
closing brackets, otherwise, return `false`.


Input: String

Output: Boolean




Explicit Rules:
- must have balanced pairs of parentheses to return `true`



Implicit Rules:
- none identified


Modelling:

I: '((What)) (is this))?'
O: false

(, (, ), ), (, ), )
( => 3
) => 4

false

I: ')Hey!('
O: false

) == 1
( == 1

---------------- Examples

balanced?('What (is) this?') == true
balanced?('What is) this?') == false
balanced?('What (is this?') == false
balanced?('((What) (is this))?') == true
balanced?('((What)) (is this))?') == false
balanced?('Hey!') == true
balanced?(')Hey!(') == false
balanced?('What ((is))) up(') == false

---------------- Data Structures

I: String
Intermediate: Array
O: Boolean



---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Split `str` into a collection of chars and assign to `chars`

Initialize `count` to 0

Iterate through `chars`
 - If the current `char` is a opening bracket, increment `count` by 1
 - If the current `char` is a closing bracket, decrement `count` by 1
 - If at any point `count` is less than < 0, return false
 - If `count` is equal to 0 after iteration, return true


=end

def balanced?(str)
  chars = str.chars
  count = 0

  chars.each do |char|
    count += 1 if char == '('
    count -= 1 if char == ')'
    return false if count < 0
  end

  count == 0
end

p balanced?('What (is) this?') == true
p balanced?('What is) this?') == false
p balanced?('What (is this?') == false
p balanced?('((What) (is this))?') == true
p balanced?('((What)) (is this))?') == false
p balanced?('Hey!') == true
p balanced?(')Hey!(') == false
p balanced?('What ((is))) up(') == false