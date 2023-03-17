=begin
---------------- Problem

You have a bank of switches before you, numbered from 1 to n. Each switch is
connected to exactly one light that is initially off. You walk down the row of
switches and toggle every one of them. You go back to the beginning, and on this
second pass, you toggle switches 2, 4, 6, and so on. On the third pass, you go
back again to the beginning and toggle switches 3, 6, 9, and so on. You repeat
this process and keep going until you have been through n repetitions.

Write a method that takes one argument, the total number of switches, and
returns an Array that identifies which lights are on after n repetitions.

Restate the problem:

Create a method that accepts an integer that represents both the number of light
switches and the number of rounds, and returns an array containing the light
switches that are on at the end of `n` repetitions. 


Input: Integer

Output: Array

Explicit Rules:
- find the lights that remain on after `n` repetitions


Implicit Rules:
- none implied


Modelling:

I: 5
O: [1, 4]

If the light number is a multiple of the round number, that light gets toggled

Start: All lights off
Rd1: 1, 2, 3, 4, 5 => toggled on
Rd2: 2, 4 => toggled off
Rd3: 3 => toggled off
Rd4: 4 => toggled on
Rd5: 5 => toggled off

[1, 4]

[false, false, false, false, false]

1..n
Rd1 => If element idx + 1 is a multiple of the round number => Toggle the switch
[true, true, true, true, true]

Rd2 => idx + 1 is a multiple? => toggle
[true, false, true, false, true]

Rd3 =>
[true, false, false, false, true]

Rd4 =>
[true, false, false, true, true]

Rd5 => 
[true, false, false, true, false]

if element == true, change it to the idx + 1, else keep it the same
Select the truthy values


---------------- Examples

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1, 4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is [1, 4, 9]

---------------- Data Structures

I: Integer
Intermediate: Array
O: Array

---------------- Algorithm

/* given an integer `n` */

Create an array of `false` values times `n` and assign to `lights`

In the outer iteration, iterate from (1..n) with the parameter `num`
  - In the inner iteration, iterate through the elements of `lights` with its
    indices
    - If `n` is a multiple of the current index + 1, toggle the current element
      from `true` to `false` or vice versa

Modify the elements within `lights`
  - If the element is `true`, replace it with it's index position + 1
    - Keep as an integer
  - If the element is `false`, replace it with the string representation of it's
    index + 1

Split `lights` into two separate arrays, `lights_on` and `lights_off`
  - If the element is an integer, place in `lights_on`
  - If it's a string, place in `lights_off`

Use string interpolation to output a message stating which lights are on and off

=end

# returns the light switches that remain on
def lights(n) 
  lights = [false] * n
  toggle_lights(lights, n)
  modify_lights!(lights)

  lights_on, lights_off = lights.partition { |item| item.class == Integer }

  output_message(lights_on, lights_off)
  lights_on
end

# outputs lights on and off
def output_message(lights_on, lights_off) 
  msg =
  "Lights #{lights_off[0..-2].join(', ')} and #{lights_off[-1]} are now off; " +
  "#{lights_on[0..-2].join(', ')} and #{lights_on[-1]} are on."
  puts msg
end

# replaces true values with index position + 1
def modify_lights!(lights) 
  lights.map!.with_index do |item, idx|
    item == true ? idx + 1 : (idx + 1).to_s
  end
end

# iterates through and toggles light switches
def toggle_lights(lights, n) 
  (1..n).each do |num|
    lights.each_with_index do |_, idx|
      if (idx + 1) % num == 0
        lights[idx] == true ? lights[idx] = false : lights[idx] = true
      end
    end
  end
end

# def perfect_square?(num)
#   Math.sqrt(num) % 1 == 0
# end

# def lights(int)
#   result = []
#   (1..int).each do |num|
#     result << num if perfect_square?(num)
#   end

#   result
# end

p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]
p lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
p lights(8000)
p lights(20000)


=begin
Further Exploration:

1. Perfect squares have an odd number of factors. Since all of our switches
   start in the off position, perfect squares will end up as on. Take the light
   switch 4 for an example. 4 is a perfect square, so it will be toggled at
   round 1 (on), round 2 (off), and round 3 (on). Another example would be the
   light switch at 16. Rd1 => on, Rd2 => off, Rd4 => on, Rd8 => off, Rd16 => on.

2. To modify my original solution to use an array, I started off with an array
   of `false` values, and during iteration if the round number was a multiple of
   the current items index position + 1, it got toggled to `true`.  At the end
   of the iteration I transformed all `true` values to the index position + 1,
   and all `false` values to the string representation of the index position + 1
   (this is important for the next step).

3. To include an output message I used string interpolation. I used the
   #partition method to create two arrays, if the elements are of the Integer
   class, they are are added to lights_on, if not, they're added to lights_off.

=end