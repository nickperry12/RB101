=begin

Even Numbers

Print all even numbers from 1 to 99, inclusive, to the console, with each number
on a separate line.

P:

- Either create or use an existing method that prints out every even number from
1 to 99

- Each number should be printed on its own line

Explicit Rules:

- Only print out even numbers
- Numbers should include every even number between 1 and 99

Implicit Rules:

- None to be inferred

Examples/Test Cases:
- None given

Data Structure:

Input: Range
Output: Integers

Algo:
High Level

- Given a range of numbers, 1 to 99 (inclusive)
  - print out the number if the number is even
  - print each following number on a new line

=end

(1..99).each { |num| puts num if num.even? }