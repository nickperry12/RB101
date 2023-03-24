# You will be given a number and you will need to return it as a string in
# Expanded Form. For example:

# expanded_form(12); # Should return '10 + 2'
# expanded_form(42); # Should return '40 + 2'
# expanded_form(70304); # Should return '70000 + 300 + 4'
=begin
---------------- Problem
Restate the problem:

Create a method that accepts an integer as an argument, and returns the number
in expanded form.


Input: Integer

Output: String

Explicit Rules:
- take the given number and return it in a string as an expanded number
- an expanded number is each digit multiplied by its decimal place
  - E.g 70304 => 7 * 10000 => 0 * 1000 => 3 * 100 ...


Implicit Rules:
- none implied


Modelling:

I: 12
O: '10 + 2'

Split integer into array of digits => [2, 1]

multiply each number by 10*idx unless the idx position is 0, in which case
leave the number as is

[2, 10] => reverse the array => [10, 2] => join with a + => 10 + 2


---------------- Examples

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'

---------------- Data Structures

I: Integer
Intermediate: Array
O: String

---------------- Algorithm

/* given an integer `int` */

Split `int` into an array of digits and assign to `digits`

Transform each value in `digits`
  - If the idx of the current digit is 0, leave it as is
  - Multiply each digit by 10*idx

Reverse the order of `digits`
  - Remove all elements that aren't a 0
  - Join back together into a string separating each digit by a `+`


=end

def expanded_form(int)
  digits = int.digits
  digits.map!.with_index do |digit, idx|
    digit * 10**idx
  end

  digits.reverse.delete_if { |digit| digit == 0 }.join(' + ')
end


p expanded_form(12) #== '10 + 2'
p expanded_form(42) #== '40 + 2'
p expanded_form(70304) #== '70000 + 300 + 4'