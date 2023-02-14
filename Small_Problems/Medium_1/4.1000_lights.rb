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

Example with n = 5 lights:

round 1: every light is turned on
round 2: lights 2 and 4 are now off; 1, 3, 5 are on
round 3: lights 2, 3, and 4 are now off; 1 and 5 are on
round 4: lights 2 and 3 are now off; 1, 4, and 5 are on
round 5: lights 2, 3, and 5 are now off; 1 and 4 are on
The result is that 2 lights are left on, lights 1 and 4. The return value is [1,
4].

With 10 lights, 3 lights are left on: lights 1, 4, and 9. The return value is
[1, 4, 9].

Restate the problem:

Create a method that takes a single integer as an argument, and returns an array
of integer, where each integer references a lightswitch that has been left on
after `n` passes through the board of lightswitches.


Input: Integer

Output: Array


Explicit Rules:
- returned array should reference the lights left on after `n` passes



Implicit Rules:
- `n` is the given integer and represents how many lights we have, and how many
passes are made through the switch board


Modelling: 

5 lights, 5 rounds

[off, off, off, off, off]

Rd1: [on, on, on, on, on]
Rd2: [on, off, on, off, on]
Rd3: [on, off, off, off, on]
Rd4: [on, off, off, on, on]
Rd5: [on, off, off, on, off]

[1, 4]

We can infer that the lights toggled are multiples of the round number


---------------- Examples






---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an integer */

Initialize a hash to `lights`
  - Each key is a number from 1 to the given int
    - Each value is 'off'

Iterate through the keys of the `lights`
  - Initialize multiple to the current num
  - If the current key on iteration is a multiple of `num`, toggle that value
    from `off` to `on`, or vice versa
Return the values of `lights` that are set to `on`


=end

def lights(int)
  (1..int).each_with_object(lights = {}) do |num, hash|
    hash[num] = 'off'
  end

  (1..int).each do |num|
    lights.each_pair do |k, _|
      if k % num == 0
        lights[k] == 'on' ? lights[k] = 'off' : lights[k] = 'on'
      end
    end
  end

  lights.select { |_, v| v == 'on' }.keys
end


p lights(5) #== [1, 4]
p lights(10) #== [1, 4, 9]