=begin
---------------- Problem

Write a method that takes a first name, a space, and a last name passed as a
single String argument, and returns a string that contains the last name, a
comma, a space, and the first name.




Restate the problem:

Create a method that takes string for an argument. The string will be a first
and last name separated by a space. The method shoul return a new string in the
format of: "Last name, First name"


Input:

Output:




Explicit Rules:
- swap the positions of each name and add a comma after the last name




Implicit Rules:
- none identified


Modelling: 




---------------- Examples

swap_name('Joe Roberts') == 'Roberts, Joe'




---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string */

Split the string into separate words
  - Reverse the order
  - Join the words back together, and separate by a comma followed by a space


=end

def swap_name(str)
  str.split.reverse.join(', ')
end

p swap_name('Joe Roberts') == 'Roberts, Joe'