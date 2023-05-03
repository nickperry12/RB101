# The set of words is given. Words are joined if the last letter of one word and
# the first letter of another word are the same. Return true if all words of the
# set can be combined into one word. Each word can and must be used only once.

# Otherwise return false.

# Input Array of 3 to 7 words of random length. No capital letters.

# Example true Set: excavate, endure, desire, screen, theater, excess, night.
# Millipede: desirE EndurE ExcavatE ExcesS ScreeN NighT Theater.

# Example false Set: trade, pole, view, grave, ladder, mushroom, president.
# Millipede: presidenT Trade.

=begin
---------------- Problem Restate the problem:

Given an array of strings, define a method that returns either true or false. It
returns true if all the strings in the array can eventually be joined into one
string. The criteria for joining a string together is:

The first and last letter of each string must match.

If there aren't enough matches to form a single string at the end, return false.



Input: Array

Output: Boolean

Explicit Rules:
- to join two strings together, the first and last letter must be the same
- if we can join all original strings and joined strings into one string, return
  true
- if there are not enough matches to form a single string at the end, return
  false


Implicit Rules:
- none identified


Modelling:

I: ["excavate", "endure", "desire", "screen", "theater", "excess", "night"] O:
true

init `word` to `arr.shift` => "excavate" arr is now => ["endure", "desire",
"screen", "theater", "excess", "night"]

iterate through arr => find first word whos last letter is the same as `word`
first letter => "endure" => join the two together => "excavateendure" => remove
that word from `arr`




---------------- Examples

p solution(["excavate", "endure", "desire", "screen", "theater", "excess",
"night"]) == true p solution(["trade", "pole", "view", "grave", "ladder",
"mushroom", "president"]) == false p solution(["screen", "desire", "theater",
"excess", "night"]) == true p solution(["engine", "endure", "elite", "excess"])
== true p solution(["east", "e", "e", "t", "t", "e", "time"]) == true p
solution(["no", "dog", "on", "good"]) == false

---------------- Data Structures





---------------- Algorithm






=end

p solution(["excavate", "endure", "desire", "screen", "theater", "excess", "night"]) == true
p solution(["trade", "pole", "view", "grave", "ladder", "mushroom", "president"]) == false
p solution(["screen", "desire", "theater", "excess", "night"]) == true
p solution(["engine", "endure", "elite", "excess"]) == true
p solution(["east", "e", "e", "t", "t", "e", "time"]) == true
p solution(["no", "dog", "on", "good"]) == false