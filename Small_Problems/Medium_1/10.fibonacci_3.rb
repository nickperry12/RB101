=begin
---------------- Problem

In the previous exercise, we developed a procedural method for computing the
value of the nth Fibonacci numbers. This method was really fast, computing the
20899 digit 100,001st Fibonacci sequence almost instantly.

In this exercise, you are going to compute a method that returns the last digit
of the nth Fibonacci number.

Restate the problem:

Create a method that accepts an Integer for an argument `n`, and returns the
last digit of the `n`th number in the sequence. For example, if we were given
the Integer 100_001, it should return `9` as the number at that position is
20899, and the last digit is `9`.


Input: Integer

Output: Integer




Explicit Rules:
- must return the last digit of the `n`th number in the fibonacci sequence



Implicit Rules:
- none identified


Modelling:

[0, 1]

`n` - 1 will be the amount of iterations

If the given int is <= 2, it should return `1`


---------------- Examples

fibonacci_last(15)        # -> 0  (the 15th Fibonacci number is 610)
fibonacci_last(20)        # -> 5 (the 20th Fibonacci number is 6765)
fibonacci_last(100)       # -> 5 (the 100th Fibonacci number is 354224848179261915075)
fibonacci_last(100_001)   # -> 1 (this is a 20899 digit number)
fibonacci_last(1_000_007) # -> 3 (this is a 208989 digit number)
fibonacci_last(123456789) # -> 4




---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an integer */

Return 1 if the given int is less than or equal to 2

Do the following (`n` - 1) amount of times
  - Add the sum of the last two numbers in our sequence to the sequence

Take the last number of the sequence, and convert it to a string
  - Find the digit at the last index of this string
    - Convert it to an Integer, and return that number


=end

def fibonacci_last(int)
  return 1 if int <= 2
  fib_sequence = [0, 1]
  int %= 60

  (int - 1).times do
    fib_sequence << fib_sequence[-2..-1].sum
  end

  fib_sequence[-1].to_s.chars[-1].to_i
end



p fibonacci_last(15) == 0        # -> 0  (the 15th Fibonacci number is 610)
p fibonacci_last(20) == 5       # -> 5 (the 20th Fibonacci number is 6765)
p fibonacci_last(100) == 5      # -> 5 (the 100th Fibonacci number is 354224848179261915075)
p fibonacci_last(100_001) == 1  # -> 1 (this is a 20899 digit number)
p fibonacci_last(1_000_007) == 3 # -> 3 (this is a 208989 digit number)
p fibonacci_last(123456789) == 4 # -> 4
p fibonacci_last(123_456_789_987_745) == 5 # => 5