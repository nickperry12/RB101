=begin

Odd Numbers

Print all odd numbers from 1 to 99, inclusive, to the console, with each number
on a separate line.

P:

We are given a range of numbers from 1 to 99, this includes numbers 1 and 99 at
both end of the range

We want to print each odd number from this range and print to the screen

Each number should printed on a new line

E:
1
3
5
7
9
...etc.

D:

Input: Range
Output: Integer

A (High Level):

Given a range of numbers from 1 to 99
- print each odd number in the range, with each number on a new line

C:
=end

(1..99).each { |num| puts num if num.odd?}