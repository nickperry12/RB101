=begin
---------------- Problem

Complete the function that:

1. accepts two integer arrays of equal length

2. compares the value each member in one array to the corresponding member in
   the other

3. squares the absolute value difference between those two values

4. returns the average of those squared absolute value difference between each
   member pair.

Examples

[1, 2, 3], [4, 5, 6] --> 9 because (9 + 9 + 9) / 3
[10, 20, 10, 2], [10, 25, 5, -2] --> 16.5 because (0 + 25 + 25 + 16) / 4
[-1, 0], [0, -1] --> 1 because (1 + 1) / 2


Restate the problem:

Create a method that accepts two arrays of equal size as an argument and finds
the difference between the integers at the same index, converts the result to
an absolute value, squares it, and then finds the average of each new value.


Input: Two arrays

Output: Single array




Explicit Rules:
- method needs to find the absolute difference, square it, and then find the
  average



Implicit Rules:
- must use floats instead of integers


Modelling:

I: [1, 2, 3], [4, 5, 6]
O: 9

1. Find the difference
2. Convert absolute
3. Repeat for all nums
4. Find the average


---------------- Examples

p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given two arrays `arr1` and `arr2` */

Iterate and transform `arr1` with its indices
  - Substract the integer at the current index of `arr2` from the integer at the
    current index of `arr1`
    - Convert result to an absolute value
      - Square the result
  - Repeat for all ints

Add all the numbers together from the resulting collection
  - Divide by the size of `arr1`
    - Return the result converted to a float


=end

def solution(arr1, arr2)
  arr1.map.with_index { |_, idx| (arr1[idx] - arr2[idx]).abs ** 2 }
      .sum
      .fdiv(arr1.size)
end


p solution([1, 2, 3], [4, 5, 6]) == 9
p solution([10, 20, 10, 2], [10, 25, 5, -2]) == 16.5
p solution([-1, 0], [0, -1]) == 1