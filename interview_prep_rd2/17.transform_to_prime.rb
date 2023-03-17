# Given a List [] of n integers , find minimum number to be inserted in a list,
# so that sum of all elements of list should equal the closest prime number .
=begin
---------------- Problem



Restate the problem:

Create a method that accepts an array of integers, and finds the smallest number
to add to the list, so that the sum of that list is a prime number.


Input: Array

Output: Integer

Explicit Rules:
- find the smallest number to add to the given array so the sum is a prime num


Implicit Rules:
- if the sum of the given array is already a prime number, return 0


Modelling:

I: [3, 1, 2]
O: 1

current_num = 0

until arr.sum + current_num is prime
  increment current num by 1

[3, 1, 2, 0] => not prime => current num += 1 => [3, 1, 2, 1] => 7 => is prime

Return 1


---------------- Examples

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2

---------------- Data Structures

I: Array
Intermediate: Array
O: Integer



---------------- Algorithm

/* given an array `arr` */

Initialize `current_num` to 0
Initialize `sum` to the sum of `arr`

Until `sum` + `current_num` is a prime number
  - Increment `current_num` by 1

For prime number validation
  - iterate from 2 up to the given number (exclusiv)
    - if the given number cannot be evenly divided by any number in this range,
      the number is prime, not prime if it can


=end

def is_prime?(num)
  (2...num).none? { |int| num % int == 0 }
end

def minimum_number(arr)
  sum = arr.sum
  current_num = 0

  until is_prime?(sum + current_num)
    current_num += 1
  end

  current_num
end


p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2