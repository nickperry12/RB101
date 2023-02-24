=begin
---------------- Problem

Alphabet symmetry

Consider the word "abode". We can see that the letter a is in position 1 and b
is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice
also that d and e in abode occupy the positions they would occupy in the
alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy
their positions in the alphabet for each word.

For example, solve(["abode","ABc","xyzD"]) = [4, 3, 1]

See test cases for more examples. Input will consist of alphabet characters,
both uppercase and lowercase. No spaces.


Restate the problem:

Create a method that accepts an array of strings as an argument, and returns an
array of integers, where each integer represents the amount of letters that are
at the same index in their string as their index in the alphabet. 


Input: Array of strings

Output: Array of integers




Explicit Rules:




Implicit Rules:



Modelling:

Given array: ["abode","ABc","xyzD"]

First string => "abode"
a == idx 0 => true
count += 1

b == idx 1 => true
count += 1 

...

outer loop (i_count to control break)

inner loop (ii_count to control break)

---------------- Examples

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an array of strings */

Initialize `result` to []
Initialize `counter` to 0
Initialize `idx` to 0
Initialize `idx_count` to 0

Create an outer loop
  - Creat an inner loop
    - Within the inner loop, access the string referenced by arr[counter]
      - If the char at arr[counter][idx] is equal to alpha[idx]
        - Increment index_count by 1
      - Increment idx by 1
      - Exit the inner loop is idx == arr[counter][idx].size
    - Append index_count to `result`
    - Reassign idx_count to 0
    - Increment counter by 1
    - Exit the outer loop if counter > arr.size - 1

Return result


=end

def solve(arr)
  alpha = ('a'..'z').to_a
  result = []
  counter = 0
  arr = arr.map(&:downcase)

  arr.each do |str|
    str.chars.each_with_index do |_, idx|
      if str[idx] == alpha[idx]
        counter += 1
      end
    end
    result << counter
    counter = 0
  end

  result
end

p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"])== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
