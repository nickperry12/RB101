=begin

Multiplicative Average

Write a method that takes an Array of integers as input, multiplies all the
numbers together, divides the result by the number of entries in the Array, and
then prints the result rounded to 3 decimal places. Assume the array is
non-empty.

P:

Restate the problem:

Create a method that takes an array of integers as an argument, that multiplies
all the integers together and then divides the result by the size of the given
array. The result should be rounded to 3 decimal places. 

Explicit Rules:
- mulitply all numbers together and divide by the amount of numbers in the array
- round the answer to 3 decimal places

Implicit Rules:
- need to convert integers to float objects

E:

p show_multiplicative_average([3, 5]) == The result is 7.500
p show_multiplicative_average([6])    == The result is 6.000
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) # => The result is 28361.667

D:

#map! to iterate over the given array to manipulate the objects and convert to
floats

can use the #round method to round off our result

A:

/* given an array of integers */

1. convert all integers to a float object
2. multiply each float by the next float in the array until you get to the last
float
3. divide the result by the size of the array
4. round the result to 3 decimal places

=end

def show_multiplicative_average(arr)
  arr.map!(&:to_f)
  result = (arr.inject(&:*) / arr.size).round(3)
  "The result is #{format('%.3f', result)}"
end

p show_multiplicative_average([3, 5]) == 'The result is 7.500'
p show_multiplicative_average([6])    == 'The result is 6.000'
p show_multiplicative_average([2, 5, 7, 11, 13, 17]) == 'The result is 28361.667'