=begin
---------------- Problem

Write Number in Expanded Form

You will be given a number and you will need to return it as a string in
Expanded Form.

For example:

expanded_form(12); # Should return '10 + 2'
expanded_form(42); # Should return '40 + 2'
expanded_form(70304); # Should return '70000 + 300 + 4'
NOTE: All numbers will be whole numbers greater than 0.


Restate the problem:

Create a method that takes an integer for an argument and returns a string
version of the expanded number. An expanded number is each decimal place
adding the next one, e.g., the given number is 42, the expanded number will
be 40 + 2


Input:

Output:




Explicit Rules:




Implicit Rules:



Modelling:

I: 12
O: '10 + 2'

I: 70304
O: '70000 + 300 + 4'

['4', '0', '3', '0', '7']

4 * 10**0 => 4
0 * 10**1 => 0
3 * 10**2 => 300
0 * 10**3 => 0
7 * 10**4 => 70000


---------------- Examples

p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an integer `int` */

Initialize `str_nums` to the individual digits of `int`

Iterate through and modify `str_nums`
  - Convert each number to an integer, and multiply by 10 to the power of idx

Reverse `str_nums` so it reflects the original order of the given int
  - Iterate through and remove all numbers that are equal to 0
  - Return the joined collection and separate elements by ' + '


=end

def expanded_form(int)
  str_nums = int.digits
  str_nums.map!.with_index { |num, idx| num * 10**idx }.reverse!
  str_nums.delete_if { |num| num.zero? }
  str_nums.join(' + ')
end



p expanded_form(12) == '10 + 2'
p expanded_form(42) == '40 + 2'
p expanded_form(70304) == '70000 + 300 + 4'
