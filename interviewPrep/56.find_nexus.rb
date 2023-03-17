=begin
---------------- Problem

6 kyu

Not to brag, but I recently became the nexus of the Codewars universe! My honor
and my rank were the same number. I cried a little.
Complete the method that takes a hash/object/directory/association list of
users, and find the nexus: the user whose rank is the closest is equal to his
honor. Return the rank of this user. For each user, the key is the rank and the
value is the honor.
If nobody has an exact rank/honor match, return the rank of the user who comes
closest. If there are several users who come closest, return the one with the
lowest rank (numeric value). The hash will not necessarily contain consecutive
rank numbers; return the best match from the ranks provided.

Example

rank honor

users = { 1 => 93,
10 => 55,
15 => 30,
20 => 19, <--- nexus
23 => 11,
30 => 2 }


Restate the problem:

Create a method that accepts a hash as an argument, and returns the rank with
the closest rank/honor match. E.g., their rank is 20, and their honor is 19,
return 20. If two users have the same delta, return the user with the lower rank
(numerical value). 


Input: Hash

Output: Integer (rank)




Explicit Rules:
- find the user with the smallest rank/honor differential and return their rank
- two users with the same differential? return the lower numerical rank value



Implicit Rules:
- none identified


Modelling:

 I: {1 => 3, 3 => 3, 4 => 4, 6 => 6, 5 => 1}
 O: 3

 result = 2147483647

 key - value == difference => convert to absolute number
 lowest_rank_users = []

 temp = difference on each iteration lower than or equal to result => result =
 temp => add that user to lowest_rank_users

 lowest_rank_users = [3, 4, 6]

 lowest_rank_users => mimimum value => 3






---------------- Examples

p nexus({1 => 3, 3 => 3, 5 => 1}) == 3
p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) == 3
p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) == 2

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a hash `users` */

Initialize `result` to 2147483647
Initialzie `lowest_rank_users` to an empty array

Iterate through `users`
  - Find the difference between the key and the value
    - Assign the result to `temp`
      - If the value of `temp` is lower than or equal to `result`, `result` =
        temp, add the key to `lowest_rank_users`

Select the lowest value from `lowest_rank_users` and return that value

=end

def nexus(users)
  result = 2147483647
  lowest_rank_users = []

  users.each do |key, value|
    temp = (key - value).abs
    if temp == result
      lowest_rank_users << key
    elsif temp < result
      result = temp
      lowest_rank_users = []
      lowest_rank_users << key
    end
  end

  lowest_rank_users.min

end


# def nexus(users)
#   users.each_with_object(modUsers = Hash.new(0)) do |(key, value), hash|
#     hash[key] = (key - value).abs
#   end

#   modUsers.keys.select { |key| modUsers[key] == modUsers.values.min }.min

# end

# def nexus(users)
#   modUsers = {}
#   lowest_delta = 32498019238
#   users.each do |rank, honor|
#     current_values = modUsers[(rank-honor).abs]
#     if current_values.nil?
#       current_values = []
#     end
#     current_values << rank
#     modUsers[(rank-honor).abs] = current_values
#     if (rank-honor).abs < lowest_delta
#       lowest_delta = (rank-honor).abs
#     end
#   end

#   modUsers[lowest_delta].min
# end




p nexus({30=>25, 25=>15, 20=>5, 15=>5, 10=>15, 5=>30}) == 10
p nexus({1 => 3, 3 => 3, 5 => 1}) == 3
p nexus({1 => 10, 2 => 6, 3 => 4, 5 => 1}) == 3
p nexus({1 => 10, 2 => 3, 3 => 4, 5 => 1}) == 2
p nexus({1 => 3, 3 => 3, 4 => 4, 6 => 6, 5 => 1}) == 3
p nexus({30=>5, 25=>10, 20=>15, 15=>20, 10=>25, 5=>30})
p nexus({30=>25, 25=>10, 20=>15, 15=>20, 10=>25, 5=>30})
p nexus({30=>25, 25=>15, 20=>15, 15=>20, 10=>25, 5=>30})
p nexus({30=>25, 25=>15, 20=>5, 15=>20, 10=>25, 5=>30})
p nexus({30=>25, 25=>15, 20=>5, 15=>5, 10=>25, 5=>30})
p nexus({30=>25, 25=>15, 20=>5, 15=>5, 10=>15, 5=>30})

