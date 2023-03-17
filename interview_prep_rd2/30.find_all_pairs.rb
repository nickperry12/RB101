=begin
---------------- Problem

Find all pairs
You are given array of integers, your task will be to count all pairs in that
array and return their count.

Notes:

Array can be empty or contain only one value; in this case return 0

If there are more pairs of a certain number, count each pair only once. E.g.:
for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s)

Random tests: maximum array length is 1000, range of values in array is between
0 and 1000

Examples

[1, 2, 5, 6, 5, 2] --> 2
...because there are 2 pairs: 2 and 5

[1, 2, 2, 20, 6, 20, 2, 6, 2] --> 4
...because there are 4 pairs: 2, 20, 6 and 2 (again)


Restate the problem:

Create a method that accepts an array of integers, and returns the amount of
pairs found within the array


Input: Array

Output: Integer

Explicit Rules:
- must count all pairs


Implicit Rules:
- none identified


Modelling:

I: [1, 2, 5, 6, 5, 2]
O: 2

pairs = 0

Iterate through => count the elements => if the element count is greater than 1
=> divide it by 2 => add the result to pairs


---------------- Examples

p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0

---------------- Data Structures

I: Array
Intermediate: Aray
O: Integer



---------------- Algorithm

/* given an array of integers `arr` */

Initialize `pairs` to 0

Iterate through `arr`
  - If the occurrences of the current element if greater than 1, divide it's
    count by 2, and increment `pairs` by that result

Return `pairs`


=end

def pairs(arr)
  pairs = 0
  arr.uniq.each { |num| pairs += arr.count(num) / 2 if arr.count(num) > 1}
  pairs
end


p pairs([1, 2, 5, 6, 5, 2]) == 2
p pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4
p pairs([0, 0, 0, 0, 0, 0, 0]) == 3
p pairs([1000, 1000]) == 1
p pairs([]) == 0
p pairs([54]) == 0
