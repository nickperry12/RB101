# Build Tower
# Build a pyramid-shaped tower, as an array/list of strings, given a positive
# integer number of floors. A tower block is represented with "*" character.

# For example, a tower with 3 floors looks like this:

# [
#   "  *  ",
#   " *** ", 
#   "*****"
# ]
=begin
---------------- Problem
Restate the problem:

Create a method that accepts an integer for an argument, and returns an array
where each element represents a tower floor. Tower floors are composed of stars
'*', with the size of each floor increasing with each succesive floor. The given
integer determines the amount of floors the tower should have at the end.


Input: Integer

Output: Array

Explicit Rules:
- Given int represents the amount of floors the tower should have
- Floors are composed of stars '*'


Implicit Rules:
- Floor size increases by 2 stars for each successive floor 1 => 3 => 5 ...


Modelling:

I: 3
O: ['  *  ', ' *** ', '*****']

Stars increment by 2 in each floor
All rows are centered wth the amount of chars on the last Floor

Star_count = 1

1..int
add stars to `floors`, times stars by star_count
increment star_count by 2


---------------- Examples

p towerBuilder(1) == ['*']
p towerBuilder(2)  == [' * ', '***']
p towerBuilder(3) == ['  *  ', ' *** ', '*****']

---------------- Data Structures

I: Integer
Intermediate: Array
O: Array

---------------- Algorithm

/* given an integer `int` */

Initialize `floors` to an empty collection
Initialize `star_count` to 1

From 1 to `int` (inclusive)
  - Add '*' times `star_count` to `floors`
  - Increment `star_count` by 2

Iterate over and transform the elements within `floors`
  - center each element using the value of `star_count`

Return `floors`


=end

def towerBuilder(int)
  floors = []
  star_count = 1

  int.times do
    floors << '*' * star_count
    star_count += 2
  end

  floors.map! { |floor| floor.center(floors[-1].size) }
end

p towerBuilder(1) == ['*']
p towerBuilder(2)  == [' * ', '***']
p towerBuilder(3) == ['  *  ', ' *** ', '*****']