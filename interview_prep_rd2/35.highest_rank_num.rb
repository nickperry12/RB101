# Complete the method which returns the number which is most frequent in the
# given input array. If there is a tie for most frequent number, return the
# largest number among them.

# Note: no empty arrays will be given.

# Examples
# [12, 10, 8, 12, 7, 6, 4, 10, 12]              -->  12
# [12, 10, 8, 12, 7, 6, 4, 10, 12, 10]          -->  12
# [12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10]  -->   3
=begin
---------------- Problem
Restate the problem:

Create a method that accepts an array of integers, and returns the number that
appears the most. If two numbers have the same count, return the one with the
higher value


Input: Array

Output: Integer

Explicit Rules:
- Find and return the number that occurs the most times
- If two numbers have the same count, return the one with the higher value


Implicit Rules:
- none implied


Modelling:

I: [4, 2, 4, 1, 4, 12, 0, 2, 12, 10, 12]
O: 12

[4, 4, 4, 12, 12, 12, 2, 2, 1, 0, 10]

Select the nums that have a count == to the item at the first index

[4, 4, 4, 12, 12, 12]

Find the max




---------------- Examples

p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12]) == 12
p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10]) == 12
p highest_rank([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10]) == 3

---------------- Data Structures

I: Array
Intermediate: Array
O: Integer

---------------- Algorithm

/* given an array of integers `arr` */

Sort `arr` by the count of each number

Select all the nums that have an equal count to the number at index 0
  - Find the max number in this resulting arra


=end

def highest_rank(arr)
  arr.sort_by! { |num| -arr.count(num) }
  arr.select { |num| arr.count(num) == arr.count(arr[0]) }.max
end

p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12]) == 12
p highest_rank([12, 10, 8, 12, 7, 6, 4, 10, 12, 10]) == 12
p highest_rank([12, 10, 8, 8, 3, 3, 3, 3, 2, 4, 10, 12, 10]) == 3
p highest_rank([4, 2, 4, 1, 4, 12, 0, 2, 12, 10, 12]) == 12