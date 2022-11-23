=begin

Multiples of 3 and 5

Write a method that searches for all multiples of 3 or 5 that lie between 1 and
some other number, and then computes the sum of those multiples. For instance,
if the supplied number is 20, the result should be 98 (3 + 5 + 6 + 9 + 10 + 12 +
15 + 18 + 20).

You may assume that the number passed in is an integer greater than 1.

P:

Need to create a method that finds all the multiples of 3 or 5 in a given range.
The range will be 1 to `n`. The method has one parameter, with an integer passed
in as an argument. The integer passed in will be the end number in our range.
Once we iterate through the range and find all the multiples of 3 or 5, the
method must find the sum and return it. 

Mental Model:

A multiple of 3 or 5 will be any number that is evenly divisible by those
numbers. For example, in the range of 1 to 20, the following numberes are will
be multiples:

[3, 5, 6, 9, 10, 12, 15, 18, 20]

Explicit Rules:
- in order to be multiple of 3 and 5, it must be evenly divisible by them
- need to return the sum of the numbers in that range

Implicit Rules:
- only positive integers can be passed in

E/TC:

multisum(3) == 3
multisum(5) == 8
multisum(10) == 33
multisum(1000) == 234168

D:

Input: Integer
Output: Integer

- Can use an array in our method to store all the multiples of 3 and 5
- Iterate through the range using either a loop or method (select comes to mind)
- Use an `if` statement to select which numbers are going to be appeneded into
the array of multiples

A (High Level):

create method `multisum` with one parameter (`number`)
- initialize a local variable `multiples` and assign an empty array to it
- iterate through the range of 1 to `number` (include both end range numbers)
- if the current number is a multiple of 3 or 5, add it to `multiples`, skip
  that number if not
- once all numbers are added, find the sum and return it

C:
=end

def multisum(number)
  multiples = Array.new
  (1..number).select do |number|
    if number % 3 == 0 || number % 5 == 0
      multiples << number
    end
  end

  multiples.inject(:+)
end

p multisum(3) == 3
p multisum(5) == 8
p multisum(10) == 33
p multisum(1000) == 234168