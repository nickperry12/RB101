=begin
---------------- Problem

Complete the greatestProduct method so that it'll find the greatest product of
five consecutive digits in the given string of digits.

For example:

greatestProduct("123834539327238239583") // should return 3240

The input string always has more than five digits.


Restate the problem:

Create a method that accepts a string representation of an integer as an
argument, and returns the largest possible product of 5 consecutive numbers


Input: String

Output: Integer




Explicit Rules:
- must return the product of 5 consecutive integers



Implicit Rules:
- none identified


Modelling:

I: "123834539327238239583"
O: 3240

Split into array of chars => ['1', '2', '3'...]
Transform into integrs => [1, 2, 3...]



---------------- Examples

p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Split the string into a collection of chars
  - Transform each char into an integer

Initialize max_num to 0

Iterate through the collection of integers, starting at index 0
  - Grab the indices from the current idx to the current idx + 4
    - Multiple all those numbers together and assign the result to temp
      - If the value of temp is greater than `max_num`, `max_num` = temp
  - Repeat until current idx + 4 == `nil`

Return `max_num`

=end

def greatest_product(str)
  nums = str.chars.map(&:to_i)
  max_num = 0

  (0...nums.size).each do |i|
    break if nums[i+4].nil?
    temp = nums[i..i+4].inject(&:*)
    max_num = temp if temp > max_num
  end

  max_num
end



p greatest_product("123834539327238239583") == 3240
p greatest_product("395831238345393272382") == 3240
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("92494737828244222221111111532909999") == 5292
p greatest_product("02494037820244202221011110532909999") == 0