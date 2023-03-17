=begin
---------------- Problem

Bubble Sort is one of the simplest sorting algorithms available. It isn't an
efficient algorithm, but it's a great exercise for student developers. In this
exercise, you will write a method that does a bubble sort of an Array.

A bubble sort works by making multiple passes (iterations) through the Array. On
each pass, each pair of consecutive elements is compared. If the first of the
two elements is greater than the second, then the two elements are swapped. This
process is repeated until a complete pass is made without performing any swaps;
at that point, the Array is completely sorted.

Restate the problem:

Create a method that accepts an array as an argument, and bubble sorts the array
until it is sorted from lowest to greatest values. Bubble sorting iterates until
the final result is reached.


Input: Array

Output: Array




Explicit Rules:
- iterates until array is sorted
- array needs to be sorted from low to high
- needs to mutate the array, not return a new one


Implicit Rules:
- none identified


Modelling:




---------------- Examples

array = [5, 3]
bubble_sort!(array)
array == [3, 5]

array = [6, 2, 7, 1, 4]
bubble_sort!(array)
array == [1, 2, 4, 6, 7]

array = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
bubble_sort!(array)
array == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)

---------------- Data Structures

I: Array
Intermediate: Array
O: Array


---------------- Scratchboard






---------------- Algorithm

/* given an array `arr` */

Initialize `idx` to 0

Until `arr` is equal to the sorted `arr`
  - Starting at index 0, compare the element at that index to the index ahead
    it
    - If the element at the current index is greater, swap their positions
      - Increment idx by 1
  - Repeat until idx + 1 returns a `nil` value
    - Reassign idx to 0
  - Repeat until the array is sorted
  
Return the array

=end

# def bubble_sort!(arr)
#   idx = 0

#   until arr == arr.sort
#     sorted_idx = nil
#     idx = 0 if arr[idx+1] == nil
#     if arr[idx] > arr[idx+1]
#       arr[idx], arr[idx+1] = arr[idx+1], arr[idx]
#       idx += 1
#       sorted_idx = idx
#     else
#       idx += 1
#     end
#   end

#   arr
# end

# Student LS Solution

# def bubble_sort!(arr)
#   counter = 0
#   loop do
#     arr[counter..-1].each_with_index do |_, idx|
#       break if idx == arr.size - 1
#       p arr[counter..-1]
#       p idx
#       if arr[idx] > arr[idx + 1]
#         arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
#       end
#       p arr
#     end
#     counter += 1
#     break if counter == arr.size
#   end
# end

def bubble_sort!(arr)
  counter = 0
  loop do
    arr[counter..-1].each_with_index do |_, idx|
      break if idx == arr.size - 1
      p arr[counter..-1]
      p "idx is #{idx}"
      if arr[idx] > arr[idx + 1]
        p "arr[idx] is #{arr[idx]} and [idx + 1] is #{arr[idx + 1]}"
        arr[idx], arr[idx + 1] = arr[idx + 1], arr[idx]
      end
      p "new array is #{arr}"
    end
    counter += 1
    break if counter == arr.size
  end
end

array2 = [6, 2, 7, 1, 4]
bubble_sort!(array2)
p array2 == [1, 2, 4, 6, 7]

# array1 = [5, 3]
# bubble_sort!(array1)
# p array1 == [3, 5]

# array2 = [6, 2, 7, 1, 4]
# bubble_sort!(array2)
# p array2 == [1, 2, 4, 6, 7]

# array3 = %w(Sue Pete Alice Tyler Rachel Kim Bonnie)
# bubble_sort!(array3)
# p array3 == %w(Alice Bonnie Kim Pete Rachel Sue Tyler)