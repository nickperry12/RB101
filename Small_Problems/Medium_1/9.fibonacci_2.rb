=begin
---------------- Problem

In the previous exercise, we developed a recursive solution to calculating the
nth Fibonacci number. In a language that is not optimized for recursion, some
(not all) recursive methods can be extremely slow and require massive quantities
of memory and/or stack space.

Ruby does a reasonably good job of handling recursion, but it isn't designed for
heavy recursion; as a result, the Fibonacci solution is only useful up to about
fibonacci(40). With higher values of nth, the recursive solution is impractical.
(Our tail recursive solution did much better, but even that failed at around
fibonacci(8200).)

Fortunately, every recursive method can be rewritten as a non-recursive
(procedural) method.

Rewrite your recursive fibonacci method so that it computes its results without
recursion.

Restate the problem:

Rewrite our fibonacci method so that it works procedurally instead of
recursively


Input: Integer

Output: Integer




Explicit Rules:
- must find the `nth` number in the fibonacci sequence
- must do this procedurally, not recursively



Implicit Rules:
- none identified


Modelling:

We know that if the given number is less than or equal to two, our returned num
will be 1, so our startin sequence of numbers will be [1, 1, 2]

If we try and find the number at the 4th position, we use this formula:

F(4) = F(4-1) + F(4-2) => 5

If the 3rd position

F(3) = F(3-1) + F(3-2) => 3







---------------- Examples

fibonacci(20) == 6765
fibonacci(100) == 354224848179261915075
fibonacci(100_001) # => 4202692702.....8285979669707537501




---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an integer */

Initiaize `fib_nums` to [1, 1, 2]
Initialize `index` `fib_nums`.size - 1

Create a loop
  - Append the return value of (index(-1) - 1) + (index(-2) - 2) to `fib_nums`
    - Stop when the last index of `fib_nums` is equal to the given integer - 1
Return the last number in `fib_nums`

Solution 2

Initialize `fib_nums` to [1, 1]

Repeat the following steps (`n` - 2) amount of times
  - Append the sum of the number at last index and number at the second index

Return the last number in `fib_nums`

=end

def fibonacci(int)
  return 1 if int <= 2
  fib_nums = [0, 1]

  (int - 1).times do
    fib_nums << fib_nums[-1] + fib_nums[-2]
  end

  fib_nums.last
end

def fibonacci(int)
  return 1 if int <= 2
  fib_nums = [0, 1]
  index = fib_nums.size - 1

  until index == int
    fib_nums << fib_nums[index] + fib_nums[index - 1]
    index += 1
  end

  fib_nums.last
end


p fibonacci(20) == 6765
p fibonacci(100) == 354224848179261915075
p fibonacci(1) == 1
p fibonacci(100_001)