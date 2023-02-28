=begin
---------------- Problem

You live in the city of Cartesia where all roads are laid out in a perfect grid.
You arrived ten minutes too early to an appointment, so you decided to take the
opportunity to go for a short walk. The city provides its citizens with a Walk
Generating App on their phones -- everytime you press the button it sends you an
array of one-letter strings representing directions to walk (eg. ['n', 's', 'w',
'e']). You always walk only a single block in a direction and you know it takes
you one minute to traverse one city block, so create a function that will return
true if the walk the app gives you will take you exactly ten minutes (you don't
want to be early or late!) and will, of course, return you to your starting
point. Return false otherwise. Note: you will always receive a valid array
containing a random assortment of direction letters ('n', 's', 'e', or 'w'
only). It will never give you an empty array (that's not a walk, that's standing
still!).



Restate the problem:

Create a method will return either true if the directions within the given array
will take the user on an a walk that lasts exactly 10 mins. The user must also
end where they started. 


Input: Array

Output: Boolean




Explicit Rules:
- the user must end on the same block as which they started
- the walk must last only 10 mins (array must have a size of 10 only)




Implicit Rules:
- none implied


Modelling:

Given array: 
['n','s','n','s','n','s','n','s','n','s']

size == 10

Each element has to alternate between the first two chars for them to end up
where they started, and it array should end with the last element

In this example, start direction is north, last direction should be south



---------------- Examples

p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false




---------------- Data Structures


Array


---------------- Scratchboard






---------------- Algorithm

/* given an array */

Return false if the size of the array != 10

Initialize `north_south` to 0
Initialize `east_west` to 0

Iterate through the given array
  - If the char is `n`
    - Increment `north_south` by 1, otherwise decrement by 1
  - If the char is `e`
    - Increment `east_west` by 1, otherwise decrement by 1

Return whether north_south and east_west are equal to 0


=end


def is_valid_walk(arr)
  return false if arr.size != 10
  north_south = 0
  east_west = 0

  arr.each do |char|
    case char
    when 'n' then north_south += 1
    when 's' then north_south -= 1
    when 'e' then east_west += 1
    when 'w' then east_west -= 1
    end
  end

  north_south == 0 and east_west == 0
end



p is_valid_walk(['n','s','n','s','n','s','n','s','n','s']) == true
p is_valid_walk(['w','e','w','e','w','e','w','e','w','e','w','e']) == false
p is_valid_walk(['w']) == false
p is_valid_walk(['n','n','n','s','n','s','n','s','n','s']) == false