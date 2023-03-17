# Given an array of numbers, for each number find out how many numbers
# in the array are smaller than it. When counting numbers, only count
# unique values. That is, if a given number occurs multiple times in
# the array, it should only be counted once.

=begin
---------------- Problem



Restate the problem:

Create a method that accepts an array of numbers, and finds how many numbers
in the array are smaller than each number. Only count unique values when
counting how many numbers are smaller. 

Input: Array

Output: Array




Explicit Rules:
- only count numbers smaller than the current number once



Implicit Rules:
- none identified


Modelling:

I: [8, 1, 2, 2, 3]
O: [3, 0, 1, 1, 2]

8 => 1, 2, 3 => 3
1 => 0
2 => 1
2 => 1
3 => 2, 1 => 2
[8, 1, 2, 2, 3]
[8, 1, 2, 3]

8 => 3 => [3]
1 => 0 => [3, 0]

.....


---------------- Examples

p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4])
                            == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

---------------- Data Structures

I: Array
Intermediate: Array
O: Array



---------------- Scratchboard






---------------- Algorithm

/* given an array `arr` */

Initialize `result` to an empty collection
Initialize `uniqe_values` the unique values of `arr`

Iterate through the integers of `arr`
  - Count the amount of integers within `unique_arr` that are less than the
    current integer
    - Add the count to `result`
Return `result`


=end

def smaller_numbers_than_current(arr)
  result = []
  unique_values = arr.uniq

  # arr.each do |num|
  #   result << unique_values.count { |int| num > int }
  # end

  0.upto(arr.size - 1) do |i|
    count = 0
    0.upto(unique_values.size - 1) do |ii|
      if arr[i] > unique_values[ii]
        count += 1
      end
      result << count if ii == unique_values.size - 1
    end
  end


  result
end


p smaller_numbers_than_current([8,1,2,2,3]) == [3, 0, 1, 1, 2]
p smaller_numbers_than_current([1,4,6,8,13,2,4,5,4]) == [0, 2, 4, 5, 6, 1, 2, 3, 2]
p smaller_numbers_than_current([7,7,7,7]) == [0,0,0,0]
p smaller_numbers_than_current([6,5,4,8]) == [2, 1, 0, 3]
p smaller_numbers_than_current([1]) == [0]

# The tests above should print "true".