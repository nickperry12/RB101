=begin

Sum of Sums Write a method that takes an Array of numbers and then returns the
sum of the sums of each leading subsequence for that Array. You may assume that
the Array always contains at least one number.

Examples:

sum_of_sums([3, 5, 2]) == (21) 
sum_of_sums([1, 5, 7, 3]) == (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35

---------------- Problem


Restate the problem:

Create a method that takes an array as an argument, and finds the sum of each
continuous number sequence. 

Mental Model:

Basically, we want to create subarrays, starting with the first index, the
second subarray will have the first two numbers, the third subarray with have
the first 3 numbers, so on and so forth. 


Input: Array Output: Integer




Explicit Rules:
- find the sum of sums of each subsequence
- can assume that the array will always have at least one integer



Implicit Rules:
- the sum of each set of numbers should be in a sequence



---------------- Examples

sum_of_sums([3, 5, 2]) == (21) 
sum_of_sums([1, 5, 7, 3]) == (36)
sum_of_sums([4]) == 4
sum_of_sums([1, 2, 3, 4, 5]) == 35



---------------- Data Structures

[1, 2, 3, 4, 5]

=> [1] 
=> [1] + [1 + 2] 
=> [1] + [1 + 2] + [1 + 2 + 3] 
=> [1] + [1 + 2] + [1 + 2 + 3] + [1 + 2 + 3 + 4]
=> [1] + [1 + 2] + [1  +2  +3] + [1 + 2 + 3 + 4] + [1 + 2 + 3 + 4 + 5]

=> 35

---------------- Scratchboard


#sum method could be useful here



---------------- Algorithm

/* given an array of integers */

Initialize var `subarrs` to an empty collection

Iterate through the given array starting at the first index
  - Add the numbers from index 0 to the current index to `subarrs`

Iterate through `subarrs` and transform each sub-collection by adding the
numbers within each sub-collection
  - Once the sums are found, transform `subarrs` once again
    - Compact the nested collections so they are all contained into one singular
      collection
      - Find the sum of the compacted collection

=end

def sum_of_sums(arr)
  subarrs = []

  0.upto(arr.size - 1) do |x|
    subarrs << arr[0..x]
  end

  subarrs.map do |subarr|
    subarr.sum
  end.sum
end




p sum_of_sums([3, 5, 2]) == 21
p sum_of_sums([1, 5, 7, 3]) == 36
p sum_of_sums([4]) == 4
p sum_of_sums([1, 2, 3, 4, 5]) == 35