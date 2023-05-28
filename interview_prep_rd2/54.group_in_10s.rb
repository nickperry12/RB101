# Write a function groupIn10s which takes any number of arguments, groups them into tens, and sorts each group in ascending order.

# The return value should be an array of arrays, so that numbers between 0 and9 inclusive are in position 0, numbers between 10 and 19 are in position 1, etc.

# Here's an example of the required output:

# grouped = group_in_10s(8, 12, 38, 3, 17, 19, 25, 35, 50)

# grouped[0]     # [3, 8]
# grouped[1]     # [12, 17, 19]
# grouped[2]     # [25]
# grouped[3]     # [35, 38]
# grouped[4]     # nil
# grouped[5]     # [50]
=begin
---------------- Problem
Restate the problem:

Create a method that accepts any number of integers and returns an array of subarrays, where each subarray contains the sorted numbers based on their range. The first index (0) should contain the range 0..9, and the second index (1) should contain 10..19 etc. If there are no numbers within a given range, that subarray should be replaced with `nil`. 


Input: Any number of integers

Output: Array of subarrays

Explicit Rules:
- each subarray should contain a different set of ranges that the given numbers can be sorted into
- if no numbers within a range, that subarray should be replaced with `nil`


Implicit Rules:
- none implied


Modelling:

I: 8, 12, 38, 3, 17, 19, 25, 35, 50
O: [[3, 8], [12, 17, 19], [25], [35, 38], nil, [50]]

[8, 12, 38, 3, 17, 19, 25, 35, 50]

result = []

Iterate over the given array => if the current integer when split into digits has a size of 1, add it to an array => sort the array => add to result => for integers with a digit size of greater than > 1 => add numbers to an array based off the first digit => sort the array => add that subarray to `result` => if there are no numbers within a given range, replace that subarray with `nil`


[8, 12, 38, 3, 17, 19, 25, 35, 50]

array = sorted array
new_arr = duplicated sorted array
result = empty array
range_start = 0
range_end = 9

loop do
  subarray = empty array
  iterate over `arr`
  if the number >= range start && <= range_end
    subarray << numbers
    remove number from duplicate array
  end

  array << nil if subarray is empty
  range_start += 10
  range_end += 10

  break out of the loop when duplicated is empty
  
end
    

---------------- Examples

p group_in_10s( 1,2,3 ) == [[ 1, 2, 3 ]]
p group_in_10s( 8, 12, 38, 3, 17, 19, 25, 35, 50 ) == [[3, 8], [12, 17, 19], [25], [35, 38], nil, [50]]
p group_in_10s( 12, 10, 11, 13, 25, 28, 29, 49, 51, 90 ) == [nil, [10, 11, 12, 13 ], [25, 28, 29], nil, [49], [51], nil, nil, nil, [90]]
p group_in_10s() == []
p group_in_10s(100), [nil, nil, nil, nil, nil, nil, nil, nil , nil, nil, [100]]

---------------- Data Structures

I: Any number of integers
Intermediate: Array
O: Array of subarrays

---------------- Algorithm

/* given an amount of integers `*arr` */

Initialize `result` to an empty collection
Reassign `arr` to the sorted version of `arr`
Initialize `array_copy` to a shallow copy of `arr`
Initialize `range_start` to 0
Initialize `range_end` to 9

Create a loop
  Initialize `subarray` to empty array
  Iterate through `arr`
    - If the current number is greater than or equal to `range_start` and less than or equal to `range_end`
      - Add that number to subarray
      - Remove that number from `array_copy`
  
  Add `nil` to `result` if subarray is empty
  Add subarray to `result`

  Increment `range_start` and `range_end` by 10

  Break out of the loop when `array_copy` is empty

Return `result`

=end

# def group_in_10s(*arr)
#   return [] if arr.empty?
#   result = []
#   arr = arr.sort
#   arr_copy = arr.dup
#   range_start = 0
#   range_end = 9

#   loop do
#    subarray = []
#    arr.each do |num|
#      if (range_start..range_end) === num
#        subarray << num
#        arr_copy.shift
#      end
#    end

#    if subarray.empty?
#      result << nil
#    else
#      result << subarray
#    end

#    range_start += 10
#    range_end += 10

#    break if arr_copy.empty?
#   end

#   result
# end

def group_in_10s(*args)
  return [] unless args.any?
  args.sort!
  args = args.group_by { |i| i/10 }
  (0..args.keys.last).map { |i| args[i] }
end


p group_in_10s(1,2,3) == [[1, 2, 3]]
p group_in_10s( 8, 12, 38, 3, 17, 19, 25, 35, 50 ) == [[3, 8], [12, 17, 19], [25], [35, 38], nil, [50]]
p group_in_10s( 12, 10, 11, 13, 25, 28, 29, 49, 51, 90 ) == [nil, [10, 11, 12, 13 ], [25, 28, 29], nil, [49], [51], nil, nil, nil, [90]]
p group_in_10s() == []
p group_in_10s(100) == [nil, nil, nil, nil, nil, nil, nil, nil , nil, nil, [100]]