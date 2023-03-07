=begin
---------------- Problem

Equal sides of an array
6 kyu
You are going to be given an array of integers. Your job is to take that array
and find an index N where the sum of the integers to the left of N is equal to
the sum of the integers to the right of N. If there is no index that would make
this happen, return -1.

For example:

Let's say you are given the array {1,2,3,4,3,2,1}: Your function will return the
index 3, because at the 3rd position of the array, the sum of left side of the
index ({1,2,3}) and the sum of the right side of the index ({3,2,1}) both equal
6.

Let's look at another one.

You are given the array {1,100,50,-51,1,1}: Your function will return the index
1, because at the 1st position of the array, the sum of left side of the index
({1}) and the sum of the right side of the index ({50,-51,1,1}) both equal 1.

Last one:

You are given the array {20,10,-80,10,10,15,35}
At index 0 the left side is {}
The right side is {10,-80,10,10,15,35}
They both are equal to 0 when added. (Empty arrays are equal to 0 in this
problem)
Index 0 is the place where the left side and right side are equal.

Note: Please remember that in most programming/scripting languages the index of
an array starts at 0.

Input:
An integer array of length 0 < arr < 1000. The numbers in the array can be any
integer positive or negative.

Output:
The lowest index N where the side to the left of N is equal to the side to the
right of N. If you do not find an index that fits these rules, then you will
return -1.

Note:
If you are given an array with multiple answers, return the lowest correct index.

Restate the problem:

Create a method that finds and returns the index at which the sum of the numbers
to the left of the index are equal to the sum of the numbers to the right of the
index.


Input: Array of ints

Output: Integer




Explicit Rules:
- sum of the numbers to the left of the idx must be equal to the sum of the nums
  to the right
- return -1 if no possible index



Implicit Rules:
- none identified


Modelling:

I: [1,2,3,4,3,2,1]
O: 3

From 0 to current idx(0) (non-inclusive)
L: []
R: [1, 2, 3, 4, 3, 2, 1]

From 0 to 1
L: [1]
R: [2, 3, 4, 3, 2, 1]

Sides not equal

...

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





---------------- Scratchboard






---------------- Algorithm

/* given an array of integers `arr` */

Iterate from the indexes of `arr` starting at 0
  - Grab the nums from 0 to current idx (non inclusive)
    - Check to see if the sum of numbers in this range of indices is equal to
      the sum of numbers from current idx + 1 to the last idx in the array
      - If the sums are equal, return the current idx
  - If equal sum is possible, return -1


=end

def find_even_index(arr)
  (0...arr.size).each do |idx|
    return idx if arr[0...idx].sum == arr[idx+1..-1].sum
  end
  -1
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
