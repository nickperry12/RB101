=begin
---------------- Problem

You are given array of integers, your task will be to count all pairs in that
array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0. If there
are more pairs of a certain number, count each pair only once. 
E.g.: for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)
Random tests: maximum array length is 1000, range of values in array is
between 0 and 1000

Examples
[1, 2, 5, 6, 5, 2]  -->  2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2]  -->  4
...because there are 4 pairs: 2, 20, 6 and 2 (again)


Restate the problem:

Create a method that takes an array of integers, and returns the amount of pairs
of equal numbers there are within the array. For example, if we had an array of
[2, 2, 2], the return would be 1, as there is only 1 pair of 2, with 1 extra.


Input: Array

Output: Integer

Explicit Rules:
- only counting pairs of 2
- return 0 if there are no pairs or the size of the array is empty

Implicit Rules:
- if there is an odd amount of integers but more than 1, reduce by 1 to get the
  amount of pairs


Modelling:

I: [1, 2, 5, 6, 5, 2, 2]
O: 2

[1, 2, 5, 6]

1 => count: 1 => not a pair
2 => count: 3 => divide by 2 => 1 => add to array => [1]
5 => count: 2 => pair => divide count by 2 => add => [1, 1]
6 => count: 1 => not a pair

[1, 1] => sum is 2



---------------- Examples

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0

---------------- Data Structures

I: Array
Intermediate: Array
O: Array


---------------- Algorithm

/* given an array `arr` */

Initialize `number_of_pairs` to an empty collection
Initialize `unique_values` to the unique integers of `arr`

Iterate through `unique_values`
  - Count the amount of the current integer that is contained in `arr`
    - If the count is greater than or equal to 2, divide the count by 2 and add
      the result to `number_of_pairs`

Return the sum of `number_of_pairs`

=end

def pairs(arr)
  number_of_pairs = []
  unique_values = arr.uniq

  unique_values.each do |int|
    count = arr.count(int)
    if count >= 2
      number_of_pairs << count / 2
    end
  end

  number_of_pairs.sum
end



p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3 
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0