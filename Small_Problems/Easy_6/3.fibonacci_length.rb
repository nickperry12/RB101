=begin

Fibonacci Number Location By Length

The Fibonacci series is a series of numbers (1, 1, 2, 3, 5, 8, 13, 21, ...) such
that the first 2 numbers are 1 by definition, and each subsequent number is the
sum of the two previous numbers. This series appears throughout the natural
world.

Computationally, the Fibonacci series is a very simple series, but the results
grow at an incredibly rapid rate. For example, the 100th Fibonacci number is
354,224,848,179,261,915,075 -- that's enormous, especially considering that it
takes 6 iterations before it generates the first 2 digit number.

Write a method that calculates and returns the index of the first Fibonacci
number that has the number of digits specified as an argument. (The first
Fibonacci number has index 1.)

P:

Create a method that takes one argument, an integer, which represents the amount
of digits in the fibonacci number we're looking for, and returns the index at
which this number is found. For example, if our given integer is 2, we are then
looking to find the index at which the first integer with 2 digits appears. 

Explicit Rules:

- the first fibonacci number starts at index 1
- must return the first number that has the specified amount of digits

Implicit Rules:

- If the first fibonacci number starts at index 1, what number is at index 0?
Should it be 0? Assumption is no

Mental Model / Notes:

If the first fibonacci number begins at index 1, then the best way to handle the
return value is to find the index and then add 1.

Input: Integer
Intermediate: Array of integers
Output: Integer


E:

find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
find_fibonacci_index_by_length(10) == 45
find_fibonacci_index_by_length(100) == 476
find_fibonacci_index_by_length(1000) == 4782
find_fibonacci_index_by_length(10000) == 47847

D:

- Use an array to store our fibonacci numbers
- Can use the `#select` method to find the integers that have the specified
amount of digits
- Can use `#first` to return the first number in the array of select nums
- Objective is to find the first number that has the specified amount of digits

Length = 3 = ?

[1, 1, 2, 3, 5, 8, 13, 21, 34, 55, 88, 143]

Found at index 11, our return answer would be index + 1, because the problem
explicitly states that the first number is at index 1


A:

/* given an integer/

- initialize an array `fibonacci_nums` and set to [1]
- initialize index and set to 0
- initialize current_num and set to 1
- add current_num to fibonacci_nums
- increment current_num by the number at index
- once you have a number that has the amount of digits specified by the given
int, return the index
=end

def find_fibonacci_index_by_length(int)
  fibonacci_nums = [1]
  index = 0
  current_num = 1

  until fibonacci_nums[-1].to_s.size == int
    fibonacci_nums << current_num
    current_num += fibonacci_nums[index]
    index += 1
  end

  fibonacci_nums.size
end


p find_fibonacci_index_by_length(2) == 7          # 1 1 2 3 5 8 13
p find_fibonacci_index_by_length(3) == 12         # 1 1 2 3 5 8 13 21 34 55 89 144
p find_fibonacci_index_by_length(10) == 45
p find_fibonacci_index_by_length(100) == 476
p find_fibonacci_index_by_length(1000) == 4782
p find_fibonacci_index_by_length(10000) == 47847