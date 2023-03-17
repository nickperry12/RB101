=begin
# An array of integers is a SPIRAL if the integers increase to a single max
# value, and then decreases down from there. Write a method that returns
# true if an array is a spiral, else return false.
=end
=begin
---------------- Problem



Restate the problem:

Create a method that accepts an array of integers for an argument, and returns true if the integers increase to a single max value and decrease after that max value, false if not. 


Input: Array of integers

Output: Boolean




Explicit Rules:
- in order to return true, the array must increase to a single max value and then decrease from that point



Implicit Rules:
- none identified


Modelling:

to reference the middle index => array size - 1 / 2
counter to 0

I: [1,2,4,3,2,1]
O: true

[1 < 2 < 4 > 3 > 2 > 1]
size of array => 6
array size - 1 == middle index

[1, 2, 4, 6, 4, 3, 1]
initialize a loop

result [1]
0..middle index
if the numbers are sequentially greater than the last, add that number to result
[1] .. increment counter by 1 .. is next element larger? => yes
[1, 2] .. increment counter by 1 .. is next element larger? => yes
[1, 2, 4] increment counter by 1 .. now equal to middle index
[1, 2, 4, 6] .. 


---------------- Examples

p spiral([1,2,4,3,2,1]) == true
p spiral([1,2,4,6,4,2,1]) == true
p spiral([0,3,5,4,3,2,1]) == true
p spiral([0,3,5,5,4,3,2,1]) == false
p spiral([1,2,4,6,4,2,4]) == false
p spiral([1,5,4,6,4,2,4]) == false

---------------- Data Structures

I: Array
Intermediate: Array
O: Boolean


---------------- Scratchboard






---------------- Algorithm

/* given an array of integers `arr` */

Initialize `result` to a collection containing the first element of `arr`

Initialize `counter` to 0
Initialize `middle_idx` to the size `arr` - 1 / 2

Initialize a loop
  - Add the first number into `result`
    - Increment counter by 1
  - Check to see if the current number is greater than the last
    - If it is, add that number to `result`
    - Increment counter by 1
      - If the number is not greater than the last, break out of the loop and return false
  - When `counter` is == `middle_idx`, check instead if the current number being added in is greater than the last

=end

def spiral(arr)
  result = [arr[0]]
  counter = 1
  middle_idx = (arr.size - 1) / 2

  until counter > middle_idx
    if arr[counter] > arr[counter - 1]
      result << arr[counter]
      counter += 1
    else
      break
    end
  end

  until counter > (arr.size - 1)
    if arr[counter] < arr[counter - 1]
      result << arr[counter]
      counter += 1
    else
      break
    end
  end

  result == arr
end
=begin
def increasing(array)
  (0...array.size - 1).all? do |idx|
    array[idx + 1] > array[idx]
  end
end

# p increasing([1, 2, 3, 4])

def decreasing(array)
  (0...array.size - 1).all? do |idx|
    array[idx + 1] < array[idx]
  end
end

# p decreasing([4, 3, 2, 1])

def spiral(array)
  largest = array.max
  nested = array.slice_after {|a| a == largest}.to_a
  if nested.size == 2
    (increasing(nested[0]) && decreasing(nested[-1]) && nested[0][-1] > nested[-1][0]) ? true : false
  else 
    nested = [nested[0], nested[1..-1].flatten]
    (increasing(nested[0]) && decreasing(nested[-1]) && nested[0][-1] > nested[-1][0]) ? true : false
  end
end
=end



p spiral([1,2,4,3,2,1]) == true
p spiral([1,2,4,6,4,2,1]) == true
p spiral([0,3,5,4,3,2,1]) == true
p spiral([0,3,5,5,4,3,2,1]) == false
p spiral([1,2,4,6,4,2,4]) == false
p spiral([1,5,4,6,4,2,4]) == false
