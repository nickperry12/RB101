=begin

---------------- Problem

p Sequence Count

Create a method that takes two integers as arguments. The first argument is a
count, and the second is the first number of a p sequence that your method will
create. The method should return an Array that contains the same number of
elements as the count argument, while the values of each element will be
multiples of the starting number.

You may assume that the count argument will always have a value of 0 or greater,
while the starting number can be any integer value. If the count is 0, an empty
list should be returned.


Restate the problem:

Create a method that two arguments, both integers, with the first integer
representing the amount of numbers in our returned array, and the second integer
will be our starting number, and the number we will increase each element by. 



Input: 2 Integers Output: Array



Explicit Rules:
- returned array should be the same size as the count (first argument)
- our starting number will be equal to the second argument
- each number in our sequence should increase by the number represented by our
  second argument
- return empty array if first argmuent is equal to 0



Implicit Rules:
- integers could be positive or negative

Mental Model:

- not necessarily incrementing / adding numbers, just trying to find the
  multiples



---------------- Examples

p sequence(5, 1) == [1, 2, 3, 4, 5] p sequence(4, -7) == [-7, -14, -21, -28] p
sequence(3, 0) == [0, 0, 0] p sequence(0, 1000000) == []




---------------- Data Structures

Array



---------------- Scratchboard

#times method could be helpful?




---------------- Algorithm

/* given 2 integers */

Initialize `num` to 0 Initialize `result` to an empty collection

Loop the number of times referenced by the `count` argument
  - reassign `num` to the value referenced by our `multiple` argument
    - add that number to `result`
  - on each iteration, reassign `num` to the result of the current value `num` +
    `multiple`
    - add that number to `result`
  - stop when length of `result` is equal to the `count` argument

Return `result`

=end

def sequence(count, multiple) 
  num = 0 
  result = []

  count.times do
    result << num += multiple
  end

  result
end


def sequence(count, multiple)
  result = []
  return [] if count == 0
  num = 0

  loop do
    num += multiple
    result << num
    break if result.size == count
  end
  
  result
end 

p sequence(5, 1) == [1, 2, 3, 4, 5]
p sequence(4, -7)== [-7, -14, -21, -28]
p sequence(3, 0) == [0, 0, 0]
p sequence(0, 1000000) == []