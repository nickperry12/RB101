=begin
---------------- Problem

6 kyu
The goal of this exercise is to convert a string to a new string where each
character in the new string is "(" if that character appears only once in the
original string, or ")" if that character appears more than once in the original
string.
Ignore capitalization when determining if a character is a duplicate.
Examples
"din" => "((("
"recede" => "()()()"
"Success" => ")())())"
"(( @" => "))(("


Restate the problem:

Create a method that accepts a string as an argument, and returns a new string
where each character is replaced by either a '(' or a ')'. It is replaced with
a '(' if the character has a count of 1, and a ')' if the character has more
than 1.


Input: String

Output: String




Explicit Rules:
- '(' for chars with a count of 1
- ')' for chars with a count of more than 1
- char case doesnt matter when counting the amount


Implicit Rules:
- none identified


Modelling:

I: 'din'
O: '((('

'd' => 1 => '('
...


---------------- Examples

p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Split `str` into an array of characters
  - Iterate over and transform the chars in the array
    - If the char has a count of 1, replace it with '('
    - If the char has a count of 2 or more, replace with ')'

Join the collection together and return the resulting string


=end

def duplicate_encode(str)
  chars = str.downcase.chars
  chars.map! { |char| str.downcase.count(char) > 1 ? ')' : '('}
  chars.join
end


p duplicate_encode("din") == "((("
p duplicate_encode("recede") == "()()()"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("(( @") == "))(("
p duplicate_encode("CodeWarrior") == "()(((())())"
p duplicate_encode("Success") == ")())())"
p duplicate_encode("Supralapsarian") == ")()))()))))()("