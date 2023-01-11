=begin

Write a method that takes an array of integers and returns the
two numbers that are closest together in value.

P:

Our method should take an argument - an array if integers, iterate through the
array, and find two numbers are are closest together in value.

Explicit Rules:

The numbers must be closest in value, e.g., with the numbers 5, 25, 15, 11, 20,
the two closest numbers in value would be 15 and 11

Implicit Rules: 

The order of the numbers doesn't matter, just need to find the two integers that are
closest in value

Doesn't have to be consecutive integers

If there are 2 sets of numbers that are equal in the amount of numbers away from
each other, use the first set of numbers 

Mental Model:

Could sorting the array help in finding the closest numbers?

unsorted: [19, 25, 32, 4, 27, 16]
sorted: [4, 16, 19, 25, 27, 32]

Starting at the first and second index

1. Grab two integers
2. Find the difference
3. Store that value into an array
4. Find the smallest number

Example:

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]

D:

Input: An array of integers
Output: An array of two integers

A:

/* given an array of integers */

1. sort the given array from lowest to highest
2. grab two numbers, starting at the first index, and the index next to it
3. find the pair that has the smallest difference and assign it to smallest nums
4. iterate through the original array of numbers
5. select the two numbers that are equal our smallest nums variable 

=end

def closest_numbers(arr)
  combos = arr.sort.each_cons(2).to_a.min_by { |x, y| y - x }
  arr.select { |i| combos.include?(i) }
end

p closest_numbers([5, 25, 15, 11, 20]) == [15, 11]
p closest_numbers([19, 25, 32, 4, 27, 16]) == [25, 27]
p closest_numbers([12, 7, 17]) == [12, 7]
