=begin
---------------- Problem

# Complete the greatestProduct method so that it'll find the greatest product of
# five consecutive digits in the given string of digits.

# For example:

# greatestProduct("123834539327238239583") // should return 3240 The input
# string always has more than five digits.


Restate the problem:

Create a method that accepts a string of digits, and finds the greatest product
of 5 consecutive digits, and returns it as an integer


Input: String

Output: Integer

Explicit Rules:
- find and return the greatest product of 5 consecutive digits


Implicit Rules:
- converting from a string to an integer


Modelling:
I: "123834539327238239583"
O: 3240

"123834539327238239583" => convert to an integer => split into an array of digits

[1, 2, 3, 8, 3, 4, 5 .... ]

[[1, 2, 3, 8, 3], [2, 3, 8, 3, 4, 5], ... ]

Covert each subarray into the product of the contained digits

Sort and return the highest value



---------------- Examples

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0

---------------- Data Structures

I: String
Intermediate: Array
O: Integer

---------------- Algorithm

Initialize `products` to an empty collection

Split the string into a collection of chars and assign to `digits`
  - Iterate over and transform each char to an integer

From 0 up to the size of `digits`
  - Create subarrays containing the items from the current idx to the current
    idx + 4 and add them to `products`
  - Break out of this iteration if the current idx + 4 is `nil`

Transform the subarrays in `products` to the product of each subarray
  - Sort this collection from low to high
  - Return the highest valued element


=end

def greatest_product(str)
  products = []
  digits = str.chars.map(&:to_i)

  (0...digits.size).each do |i|
    break if digits[i+4] == nil
    products << digits[i..i+4]
  end

  products.map! { |subarray| subarray.inject(&:*) }
  products.max
end




p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0