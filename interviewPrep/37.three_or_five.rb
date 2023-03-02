=begin
---------------- Problem

6 kyu
If we list all the natural numbers below 10 that are multiples of 3 or 5, we get
3, 5, 6 and 9. The sum of these multiples is 23.
Finish the solution so that it returns the sum of all the multiples of 3 or 5
below the number passed in.
Note: If the number is a multiple of both 3 and 5, only count it once

Restate the problem:

Create a method that accepts an integer for an argument, and finds all multiples
of 3 and 5 between 1 and the given number (non-inclusive). If the number is a
multiple of both 3 and 5, only count it once. Once all the nums are found, find
the sum.


Input: Integer

Output: Integer




Explicit Rules:
- if a number is a mulltiple of both 3 and 5, only count that number once



Implicit Rules:
- none identified


Modelling:

I: 10
O: 23

10 => [3, 5, 6, 9] => 23


---------------- Examples

p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168

---------------- Data Structures

I: Integer
Intermediate: Array
O: Integer


---------------- Scratchboard


Using a range is a possibility



---------------- Algorithm

/* given a integer `int` */

Initialize `multiples` to an empty array

Iterate through the numbers from 1 to `int` (non-inclusive)
  - If the number is a multiple of 3 or 5, add that number to `multiples`

Sum all the elements in `multiples`
  - Return the sum


=end

def solution(int)
  multiples = (1...int).select { |num| num % 3 == 0 || num % 5 == 0 }
  multiples.sum
end


p solution(10) == 23
p solution(20) == 78
p solution(200) == 9168