=begin
---------------- Problem

6 kyu
Task :

Given a List [] of n integers , find the minimum number to be inserted in a
list, so that the sum of all elements of the list should equal the closest prime
number .

Notes

List size is at least 2 .
List's numbers will only have positives (n > 0) .
Repetition of numbers in the list could occur .
The newer list's sum should equal the closest prime number .
Input >> Output

Examples
1- minimumNumber ({3,1,2}) ==> return (1)

Explanation:
Since , the sum of the list's elements equal to (6) , the minimum number to be
inserted to transform the sum to prime number is (1) , which will make *the sum
of the List** equal the closest prime number (7)* .

2- minimumNumber ({2,12,8,4,6}) ==> return (5)

Explanation:
Since , the sum of the list's elements equal to (32) , the minimum number to be
inserted to transform the sum to prime number is (5) , which will make *the sum
of the List** equal the closest prime number (37)* .

3- minimumNumber ({50,39,49,6,17,28}) ==> return (2)

Explanation:

Since , the sum of the list's elements equal to (189) , the minimum number to be
inserted to transform the sum to prime number is (2) , which will make *the sum
of the List** equal the closest prime number (191)* .

Restate the problem:

Create a method that accepts an array of integer as the argument, and finds the
smallest number possible to add to the sum of the array to create a prime
number. A prime number is defined as a number that is only divisble by itself


Input: Array of integers

Output: Integer




Explicit Rules:
- find the smallest number to add to the sum of the given array to create a
  prime number



Implicit Rules:
- none identified


Modelling:
[3, 1, 2] => sum: 6 => next nearest prime: 7 => smallest num to add => 1



---------------- Examples

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an array of integers */

Initialize `sum` to the sum of the given array

Initialize `current_num` to 1

Until `sum` is a prime number
  - Add `current_num` to `sum`
    - Check if it's prime
      - If it's prime, break and return `current_num`
      - If not prime, increment `current_num` by 0
  
To check if the result is prime
  - From 2 to the target number
    - If the number is evenly divisble, and the number it is divided by is not
      the given number, return false
    - If the number is evenly divisble, and the number it is divided by is equal
      to the current number, return true

=end

def is_prime?(num)
  result = true

  (2..num).each do |i|
    if num % i == 0 && i != num
      result = false
      break
    elsif num % i == 0 && num == i
      result = true
    end
  end

  result
end

def minimum_number(arr)
  sum = arr.sum
  current_num = 0

  until is_prime?(sum + current_num)
    current_num +=1
  end

  current_num
end

p minimum_number([3,1,2]) == 1
p minimum_number([5,2]) == 0
p minimum_number([1,1,1]) == 0
p minimum_number([2,12,8,4,6]) == 5
p minimum_number([50,39,49,6,17,28]) == 2