=begin
---------------- Problem

Given a list of integers and a single sum value, return the first two values
(parse from the left please) in order of appearance that add up to form the sum.

If there are two or more pairs with the required sum, the pair whose second
element has the smallest index is the solution.

Restate the problem:

Create a method that accepts an array of integers and a target integer for its
arguments. The method should iterate through the array and return an array of
two integers from `arr` that sum to the target number. 


Input: Array, Integer

Output: Array




Explicit Rules:
- find two numbers from within the array that sum to the target number, and
  place those numbers into the resulting array
- if two pairs sum to the target, return the pair who's second number appears first
- return [] if no possible pairs sum to the target


Implicit Rules:
- none identified


Modelling:

I: [4, 3, 2, 3, 4], 6
O: [4, 2]

Idx0 => 4 => add the number at the next idx => idx 1 == 3 => 4 + 3 => 7
Not the result, next iteration

Idx 0 => 4 => add the number at the next idx from previous => idx 2 == 2 => 
4 + 2 => 6 

Result => [4, 2]

[10, 5, 2, 3, 7, 5], 10

Two possible solutions

[5, 5]
[3, 7]

Select the one who's second element appears first

result = [[5,5], [3, 7]]




---------------- Examples

p sum_pairs([11, 3, 7, 5], 10) == [3, 7]
p sum_pairs([4, 3, 2, 3, 4], 6) == [4, 2]
p sum_pairs([0, 0, -2, 3], 2) == []
p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]





---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an array `arr` and an integer `target` */

Initialize `result` to an empty array

Starting at the first index up to the last index of `arr` (`i`)
  - Starting at `i + 1` (ii)
    - Add the numbers referenced by arr[i] and arr[ii]
      - If the results sum to `target`
        - Add [i, ii] to `result`


Sort `result` by the values at the second index of each subarray

If `result` is empty
  - return `nil`
  - If not, take the array at index 0, and transform each item to `arr[item]`
    and return the resulting array



=end

def sum_pairs(arr, target)
  result = []

  (0...arr.size).each do |i|
    (i+1...arr.size).each do |ii|
      if arr[i] + arr[ii] == target
        result << [i, ii]
      end
    end
  end

  result.sort_by! { |subarr| subarr[1] }
  result.empty? ? nil : result[0].map { |item| arr[item] }
end


p sum_pairs([11, 3, 7, 5], 10) == [3, 7]
p sum_pairs([4, 3, 2, 3, 4], 6) == [4, 2]
p sum_pairs([0, 0, -2, 3], 2) == nil
p sum_pairs([10, 5, 2, 3, 7, 5], 10) == [3, 7]