# The Western Suburbs Croquet Club has two categories of membership, Senior and
# Open. They would like your help with an application form that will tell
# prospective members which category they will be placed.

# To be a senior, a member must be at least 55 years old and have a handicap
# greater than 7. In this croquet club, handicaps range from -2 to +26; the
# better the player the lower the handicap.

# Input will consist of a list of pairs. Each pair contains information
# for a single potential member. Information consists of an integer for the
# person's age and an integer for the person's handicap.

# Output will consist of a list of string values (in Haskell and C: Open
# or Senior) stating whether the respective member is to be placed in the senior
# or open category.
=begin
---------------- Problem
Restate the problem:

Create a method that accepts an array of arrays, where each subarray contains
the age and handicap for a potential club member. The method should return a new
array, where each subarray is modified to which category the prospective member
will be placed in. 


Input: 2D array

Output: Array

Explicit Rules:
- to be classified as a senior, they must be 55 or older and have a handicap
  greater than 7
- if those conditions are not satisfied, they are placed in the open category

Implicit Rules:
- none implied


Modelling:

I: [[45, 12], [55,21], [19, -2], [104, 20]]
O: ['Open', 'Senior', 'Open', 'Senior']

[45, 12] => only satisfies one condition => open
[55, 21] => satisfies both conditions => senior

...


---------------- Examples

p open_or_senior([[45, 12], [55,21], [19, -2], [104, 20]]) == ['Open', 'Senior', 'Open', 'Senior']
p open_or_senior([[3, 12], [55,1], [91, -2], [54, 23]]) == ['Open', 'Open', 'Open', 'Open']
p open_or_senior([[59, 12], [55,-1], [12, -2] ,[12, 12]]), == ['Senior', 'Open', 'Open', 'Open']
p open_or_senior([[16, 23], [73,1], [56, 20], [1, -1]]) == ['Open', 'Open', 'Senior', 'Open']

---------------- Data Structures

I: 2D Array
Intermediate: Array
O: Array



---------------- Algorithm

/* given an array `arr` */

Iterate through the given array and transform the contained elements
  - If the current subarray contains an integer greater than or equal to 55 at
    the 0 index, and an integer greater than 7, replace that element with
    "Senior"
  - If neither of those conditions are satisfied, replace the element with
    "Open"

Return the new array


=end

def open_or_senior(arr)
  arr.map! do |player|
    if player[0] >= 55 && player[1] > 7
      "Senior"
    else
      "Open"
    end
  end
end

p open_or_senior([[45, 12], [55,21], [19, -2], [104, 20]]) == ['Open', 'Senior', 'Open', 'Senior']
p open_or_senior([[3, 12], [55,1], [91, -2], [54, 23]]) == ['Open', 'Open', 'Open', 'Open']
p open_or_senior([[59, 12], [55,-1], [12, -2] ,[12, 12]]) == ['Senior', 'Open', 'Open', 'Open']
p open_or_senior([[16, 23], [73,1], [56, 20], [1, -1]]) == ['Open', 'Open', 'Senior', 'Open']
