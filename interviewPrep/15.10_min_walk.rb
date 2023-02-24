=begin
---------------- Problem

You live in the city of Cartesia where all roads are laid out in a perfect grid.
You arrived ten minutes too early to an appointment, so you decided to take the
opportunity to go for a short walk. The city provides its citizens with a Walk
Generating App on their phones -- everytime you press the button it sends you an
array of one-letter strings representing directions to walk (eg. ['n', 's', 'w',
'e']).

You always walk only a single block in a direction and you know it takes you one
minute to traverse one city block, so create a function that will return true if
the walk the app gives you will take you exactly ten minutes (you don't want to
be early or late!) and will, of course, return you to your starting point.
Return false otherwise. 

Note: you will always receive a valid array containing a random assortment of
direction letters ('n', 's', 'e', or 'w' only). It will never give you an empty
array (that's not a walk, that's standing still!).


Restate the problem:

Create a method that accepts an array of strings as an argument, and returns
true if the direction given in the array will satisfy two requirements:

The walk is 10 minutes total, and returns you to the starting point.

And returns false otherwise. 


Input: Array of strings

Output: Boolean




Explicit Rules:
- return true if the array size is 10 AND the contained directions return you
to the starting point



Implicit Rules:
- return false if the size of the given array isn't equal to 10


Modelling:

['n','s','n','s','n','s','n','s','n','s']

Size => 10
Directions return us to the starting point




---------------- Examples

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false


---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an array of strings `arr` */

Initialize `north_south` to 0
Initialize `east_west` to 0

Iterate through the `arr`
  - If the direction is north, increment `north_south` by 1, and decrement is by
    1 if it is south
    - Do the same for directions that are either east and west

Return true if `north_south` is equal to 0 AND `east_west` is equal to 0 AND the
size of `arr` is equal to 10


=end

def is_valid_walk(arr)
  return false if arr.size != 10
  north_south = 0
  east_west = 0

  arr.each do |direction|
    case direction
    when "n" then north_south += 1
    when "s" then north_south -= 1
    when "e" then east_west += 1
    when "w" then east_west -= 1
    end
  end

  north_south == 0 && east_west == 0
end



p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false
