=begin
---------------- Problem

Sherlock has to find suspects on his latest case. He will use your method, dear
Watson. Suspect in this case is a person which has something not allowed in
his/her pockets.

Allowed items are defined by array of numbers.

Pockets contents are defined by map entries where key is a person and value is
one or few things represented by an array of numbers (can be nil or empty array
if empty)

Example:

pockets = { bob: [1], tom: [2, 5], jane: [7] }

Write amethod which helps Sherlock to find suspects. If no suspect is found or
there are no pockets (pockets == nil), the method should return nil.


Restate the problem:

Create a method that accepts a hash and an array as an argument. The hash will
contain names for keys, and their values will be arrays containing integers. The
integers within the array represent items they have in their pockets. The given
array will contain integers that represent items each person is not allowed to
have. The method should return an array containing the names of people who have
items in their pockets they are not allowed to have. 


Input: Hash, Array

Output: Array




Explicit Rules:
- return an array with names of suspects
- the given array contains items they're allowed to have
- if the pocket contents are `nil` or there are no suspects, return `nil`


Implicit Rules:
- none identified


Modelling:

pockets = { bob: [1], tom: [2, 5], jane: [7] }

I: pockets, [1, 2]
O: [:tom, :jane]

values => [[1], [2, 5], [7]] => iterate through each subarray =>
subarray contains contents not listed in given array? => add name to suspects

---------------- Examples

p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]


---------------- Data Structures

I: Hash, Array
Intermediate: Array
O: Array



---------------- Scratchboard






---------------- Algorithm

/* given a hash `pockets` and an array `items` */

Initialize suspects to []

Iterate through each value of `pockets`
  - If the current value has any values not included in `items`, add the
    associated key to `suspects`
  - If the current `value` is `nil`, move onto the next iteration

If `suspects` is empty, return `nil`
  - If not, return `suspects`




=end

pockets = { bob: [1], tom: [2, 5], jane: [7] }

def find_suspects(pockets, items)
  suspect_pockets = pockets.values.select do |pocket|
                      next if pocket == nil
                      pocket.any? { |item| !items.include?(item) }
                    end

  suspects = pockets.keys.select do |name|
               suspect_pockets.include?(pockets[name])
             end          

  suspects.empty? ? nil : suspects
end



p find_suspects(pockets, [1, 2]) == [:tom, :jane]
p find_suspects(pockets, [1, 7, 5, 2]) == nil
p find_suspects(pockets, []) == [:bob, :tom, :jane]
p find_suspects(pockets, [7]) == [:bob, :tom]
