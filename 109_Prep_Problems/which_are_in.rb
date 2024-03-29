=begin
60. Which are in?
(https://www.codwewars.com/kata/550554fd08b86f84fe000a58)
6 kyu
Given two arrays of strings a1 and a2 return a sorted array r in alphabetical
order of the strings of a1 which are substrings of strings of a2.

#Example 1: a1 = ["arp", "live", "strong"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns ["arp", "live", "strong"]

#Example 2: a1 = ["tarp", "mice", "bull"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns []

a1 = ['arp', 'live', 'strong']
a2 = ['harp', 'sharp', 'alive', 'lively']


- initialize var included_substrings and set to []
- compare the strings from a1 to a2, and grab the strings from a1 that are substrings contained in the strings of a2
- starting at the first index, compared to the next and if that string is included in the strings in a2, add it to a collection
- repeat this for each string in a1
- 


(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"]

- compared position 0 of a1 to position 0 of a2, if that string is included in it, add it to included_substrings
- repeat for all positions of a1 to a2

=end

# first solution

# def substrings(arr1, arr2)
#   (0...arr1.size).each_with_object([]) do |idx, included_substrings|
#     (0...arr2.size).each do |snd_idx|
#       if arr2[snd_idx].include?(arr1[idx])
#         included_substrings << arr1[idx]
#       end
#     end
#   end.uniq.sort
# end

# refactored solution

# def substrings(arr1, arr2)
#   arr1.select do |str1|
#     arr2.any? do |str2|
#       str2.include?(str1)
#     end
#   end.sort
# end

# p substrings(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"]
# p substrings(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"]) == []
# p substrings(["delta", "gamma", "alpha", "beta"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == ["alpha", "beta", "gamma"]
# p substrings(["albe", "negam"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == []



=begin
---------------- Problem

60. Which are in?
(https://www.codwewars.com/kata/550554fd08b86f84fe000a58)
6 kyu
Given two arrays of strings a1 and a2 return a sorted array r in alphabetical
order of the strings of a1 which are substrings of strings of a2.

#Example 1: a1 = ["arp", "live", "strong"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns ["arp", "live", "strong"]

#Example 2: a1 = ["tarp", "mice", "bull"]

a2 = ["lively", "alive", "harp", "sharp", "armstrong"]

returns []

a1 = ['arp', 'live', 'strong']
a2 = ['harp', 'sharp', 'alive', 'lively']

Restate the problem:

Create a method that accepts two arrays containing string elements, and returns
a sorted array (sorted alphabetically) of the strings in `a1` that are substrings
of the strings in `a2`.


Input: Array

Output: Array




Explicit Rules:
- we are selecting the strings from `a1` that are substrings of the strings in
  `a2`
- resulting array must be sorted alphabetically



Implicit Rules:
- if no possible substrings, return an empty array


Modelling:

I: ['arp', 'live', 'strong'], ["lively", "alive", "harp", "sharp", "armstrong"]'
O: ['arp', 'live', 'strong']

['arp', 'live', 'strong']



---------------- Examples

p substrings(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"]
p substrings(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"]) == []
p substrings(["delta", "gamma", "alpha", "beta"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == ["alpha", "beta", "gamma"]
p substrings(["albe", "negam"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == []

---------------- Data Structures

I: Array x2
Intermediate: Array
O: Array



---------------- Scratchboard






---------------- Algorithm

/* given two arrays `arrOne` and `arrTwo` */

Initialize `substrings` to an empty collection

Starting at `idx0` of up to the size of `arrOne`
  Starting at the current idx up to the size of `arrTwo`
    Check if the string referenced at the current index in `arrOne` is contained
    in the string referenecd at the current index in `arrTwo`
      If it is, add it to `substrings`
Sort the strings in `substrings` alphabetically
  - Return the resulting array

=end

def substrings(arrOne, arrTwo)
  substrings = []

  (0...arrOne.size).each do |i|
    (0...arrTwo.size).each do |ii|
      if arrTwo[ii].include?(arrOne[i])
        substrings << arrOne[i] unless substrings.include?(arrOne[i]) == true
      end
    end
  end

  p substrings.sort
end




p substrings(["arp", "live", "strong"], ["lively", "alive", "harp", "sharp", "armstrong"]) == ["arp", "live", "strong"]
p substrings(["tarp", "mice", "bull"], ["lively", "alive", "harp", "sharp", "armstrong"]) == []
p substrings(["delta", "gamma", "alpha", "beta"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == ["alpha", "beta", "gamma"]
p substrings(["albe", "negam"], ["alphabetical", "beta-carotene", "gamma rays", "deltoid"]) == []