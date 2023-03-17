# You are going to be given an array of integers. Your job is to take that array
# and find an index N where the sum of the integers to the left of N is equal to
# the sum of the integers to the right of N. If there is no index that would
# make this happen, return -1.

# For example:

# Let's say you are given the array {1,2,3,4,3,2,1}: Your function will return
# the index 3, because at the 3rd position of the array, the sum of left side of
# the index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both
# equal 6.
=begin
---------------- Problem



Restate the problem:

Create a method that accepts an array of integers and finds and returns the idx
at which the sum of the elements to the left of that idx are equal to the sum of
the integers to the right of that idx. If there is no possible idx, return -1.


Input: Array

Output: Integer

Explicit Rules:
- if no equal sum, return -1
- find and return the idx at which the sum of the integers to the left is equal
  to the sum of the integers to the right


Implicit Rules:
- none identified


Modelling:

I: [1, 2, 3, 4, 3, 2, 1]
O: 3

(0...arr.size) => 0 to 0 => [] => 0 to 1 => [1]

Checking on each iteration if the sum of the integers from 0...current idx is
equal to the sum of the integers from current idx + 1 ... -1 


---------------- Examples

p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1

---------------- Data Structures

I: Array
Intermediate: Range
O: Integer (index value)



---------------- Algorithm

/* given an array of integers `arr` */

Initialize index to -1

From 0 up to the size of `arr` (exclusive)
  - Check to see if the sum of the integers from 0 to the current idx (exclusive)
    is equal to the sum of the integers from current idx + 1 to -1
    - If the it is equal, reassign idx to the current idx, and break out of the
      iteration

Return index

=end

def find_even_index(arr)
  index = -1

  (0...arr.size).each do |i|
    if arr[0...i].sum == arr[i+1..-1].sum
      index = i
      break
    end
  end

  index
end



p find_even_index([1,2,3,4,3,2,1]) == 3
p find_even_index([1,100,50,-51,1,1]) == 1
p find_even_index([1,2,3,4,5,6]) == -1
p find_even_index([20,10,30,10,10,15,35]) == 3
p find_even_index([20,10,-80,10,10,15,35]) == 0
p find_even_index([10,-80,10,10,15,35,20]) == 6
p find_even_index(Array(1..100)) == -1
p find_even_index([0,0,0,0,0]) == 0
p find_even_index([-1,-2,-3,-4,-3,-2,-1]) == 3
p find_even_index(Array(-100..-1)) == -1