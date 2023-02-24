=begin

fizzbuzz

Write a method that takes two arguments: the first is the starting number, and
the second is the ending number. Print out all numbers from the starting number
to the ending number, except if a number is divisible by 3, print "Fizz", if a
number is divisible by 5, print "Buzz", and finally if a number is divisible by
3 and 5, print "FizzBuzz".

P:

Create a method that takes two arguments, both integers, that will represent our
start and end points in a range. This method should print out each number in
this range, however, if the current number on iteration is divisible by 3, then
it should instead print out 'Fizz'. Additionally, if the current number on
iteration is divisible by 5, print out Buzz, and if the number is divisble by
both 3 and 5, print out FizzBuzz. 

Input: Two Integers
Output: String

Explicit Rules
- if number is divisble by 3, print fizz
- if number is divisble by 5, print buzz
- if number is divisble by both, print FizzBuzz

Implicit Rules
- None identified

Modeling:

Range of nums = 1..15

1 => not divisble by 3 or 5, add 1 to our string
2 => not divisble by 3 or 5, add 2 to our string
3 => divisble by 3, add Fizz
4 => not divisble by 3 or 5, add 4
5 => divisble by 5, add Buzz
...

E:

fizzbuzz(1, 15) == "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"

D:

Range of nums
String

A:

/* given to integers */

Initialize `result` to an empty collection

Iterate through all the numbers from argument1 to argument2, including the
argument nums
  - For each number, check if they are divisble by 3, 5, or both
    - If it is not divisible by any, add the number to our string
    - If it is divisible by 3, add Fizz to our string
    - If it is divisble by 5, add Buzz to our string
    - If divisble by both, add FizzBuzz to our string

Return our collection

=end

def fizzbuzz(num1, num2)
  result = []

  num1.upto(num2).each do |num|
    if num % 3 == 0 && num % 5 == 0
      result << 'FizzBuzz'
    elsif num % 5 == 0
      result << 'Buzz'
    elsif num % 3 == 0
      result << 'Fizz'
    else
      result << "#{num}"
    end
  end

  result.join(', ')
end


p fizzbuzz(1, 15) == "1, 2, Fizz, 4, Buzz, Fizz, 7, 8, Fizz, Buzz, 11, Fizz, 13, 14, FizzBuzz"