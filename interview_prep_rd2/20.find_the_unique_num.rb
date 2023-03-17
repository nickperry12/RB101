# There is an array with some numbers. All numbers are equal except for one. Try to find it!

# It's guaranteed that array contains at least 3 numbers.
=begin
---------------- Problem



Restate the problem:

Create a method that accepts an array of integers and finds and returns the
integer that occurs only once. 


Input: Array

Output: Integer

Explicit Rules:
- find and return the number that only appears once


Implicit Rules:



Modelling:

I: [ 1, 1, 1, 2, 1, 1 ]
O: 2

result = nil

[1, 2]

Iterate through this array => if the number has a count of 1 => num = that number


---------------- Examples

p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55

---------------- Data Structures

I: Array
Intermediate: Array
O: Integer

---------------- Algorithm

/* given an array `arr` */

Initialize `num` to `nil`

Iterate through the unique elements of `arr`
  - If the current num has a count of more than 1, reassign `num` to that number

Return `num`

=end

def find_uniq(arr)
  num = nil
  arr.uniq.each { |int| num = int if arr.count(int) == 1 }
  num
end

p find_uniq([ 1, 1, 1, 2, 1, 1 ]) == 2
p find_uniq([ 0, 0, 0.55, 0, 0 ]) == 0.55