# Given two arrays a and b write a function comp(a, b) (orcompSame(a, b)) that
# checks whether the two arrays have the "same" elements, with the same
# multiplicities (the multiplicity of a member is the number of times it
# appears). "Same" means, here, that the elements in b are the elements in a
# squared, regardless of the order.

# Examples

# Valid arrays

# a = [121, 144, 19, 161, 19, 144, 19, 11]  
# b = [121, 14641, 20736, 361, 25921, 361, 20736, 361]
=begin
---------------- Problem



Restate the problem:

Create a method that accepts two arrays, and returns true if the elements in the
second array are equal to the elements of the first array squared, and the
occurrences of each element are the same. 


Input: Two Arrays

Output: Boolean

Explicit Rules:
- the values in the second array must be equal to the squares values of the
  first array
- must also have the same number of elements


Implicit Rules:
- none implied


Modelling:

I: [121, 144, 19, 161, 19, 144, 19, 11], 
   [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]
O: true

Check if they have the same number of elements
'a' => 8
'b' => 8

Square the elements within `a` => Sort both arrays from low to high => check
if they are equal


---------------- Examples

p comp( [121, 144, 19, 161, 19, 144, 19, 11], 
  [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true

---------------- Data Structures

I: Arrays
Intermediate: Array
O: Boolean



---------------- Algorithm

/* given two arrays `a` and `b` */

Transform the elements of `a`
  - Square each element

Sort the transformed `a` and `b`
  - Sort from low to high

Check if they are equal
  - Return true if they are, false if not


=end

def comp(a, b)
  a = a.map { |int| int ** 2 }.sort
  a == b.sort
end


p comp( [121, 144, 19, 161, 19, 144, 19, 11], 
  [11*11, 121*121, 144*144, 19*19, 161*161, 19*19, 144*144, 19*19]) == true