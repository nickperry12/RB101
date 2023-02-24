=begin
---------------- Problem

Write a function, persistence, that takes in a positive parameter num and
returns its multiplicative persistence, which is the number of times you must
multiply the digits in num until you reach a single digit.

For example:

persistence(39) # returns 3, because 3*9=27, 2*7=14, 1*4=4
# and 4 has only one digit

persistence(999) # returns 4, because 9*9*9=729, 7*2*9=126,
# 1*2*6=12, and finally 1*2=2

persistence(4) # returns 0, because 4 is already a one-digit number

Restate the problem:

Create a method that accepts an integer for an argument, and returns an integer,
where that integer is amount of times you must multiply each digit from the
given int until we get a single digit. 


Input: Integer

Output: Integer




Explicit Rules:
- must return a single digit



Implicit Rules:



Modelling:

I: 39
0: 3

3 * 9 == 27
2 * 7 == 14
1 * 4 == 4


---------------- Examples

p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4


---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an integer `int` */

Initialize counter to 0

Split `int` into digits
  - increment counter by 1
  - multiply the digits together
    - if the result is a single digit, return counter
    - if the result is not a single digit, move on, repeat the loop


=end

def persistence(int)
  return 0 if int.digits.size == 1
  counter = 0

  until int.digits.size == 1
    counter += 1
    int = int.digits.inject(&:*)
  end

  counter
end


p persistence(39) == 3
p persistence(4) == 0
p persistence(25) == 2
p persistence(999) == 4
