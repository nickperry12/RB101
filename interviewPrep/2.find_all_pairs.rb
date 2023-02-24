=begin
---------------- Problem

Find all pairs

You are given array of integers, your task will be to count all pairs in that
array and return their count. Notes: Array can be empty or contain only one
value; in this case return 0
  
If there are more pairs of a certain number, count each pair only once. E.g.:
for [0, 0, 0, 0] the return value is 2 (= 2 pairs of 0s) Random tests: maximum
array length is 1000, range of values in array is between 0 and 1000

Restate the problem:

Given an array of integers, write a method that finds all pairs of integers and
returns their count


Input: Array

Output: Integer




Explicit Rules:
- Trying to find all pairs of integers and return their count, if there is more
than one pair, only count a pair once, e.g., if we have [0, 0, 0, 0], we will
have 2 pairs



Implicit Rules:
- none identified


Modelling:

Given arr: [1, 2, 2, 20, 6, 20, 2, 6, 2]

1 => 1
2 => 4
20 => 2
6 => 2

=> 4 total pairs


---------------- Examples

[1, 2, 5, 6, 5, 2] --> 2 ...because there are 2 pairs: 2 and 5
[1, 2, 2, 20, 6, 20, 2, 6, 2] --> 4 ...because there are 4 pairs: 2, 20, 6 and 2 (again)


---------------- Data Structures

Array
Intermediate: hash possibly


---------------- Scratchboard






---------------- Algorithm

/* given an array */
[1, 2, 2, 20, 6, 20, 2, 6, 2]

Initialize `num_pairs` to a hash, where the key is an integer from `arr` and the
values are the counts of that number
  - Iterate through `num_pair` and select all the values that are greater or
    equal to 2
    - Transform this array of values, and if the number is odd, subtract 1
      - Sum the array, divide it by 2, and return the result

=end

def find_pairs(arr)
  arr.each_with_object(hsh = Hash.new(0)) do |num, hsh|
    hsh[num] += 1
  end

  result = hsh.values.select { |int| int >= 2 }
  result.map! do |int|
    int.odd? ? int -= 1 : int
  end
  result.sum / 2
end


p find_pairs([1, 2, 5, 6, 5, 2]) == 2
p find_pairs([1, 2, 2, 20, 6, 20, 2, 6, 2]) == 4