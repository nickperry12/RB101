=begin
---------------- Problem

A collection of spelling blocks has two letters per block, as shown in this
list:

B:O   X:K   D:Q   C:P   N:A G:T   R:E   F:S   J:W   H:U V:I   L:Y   Z:M

This limits the words you can spell with the blocks to just those words that do
not use both letters from any given block. Each letter in each block can only be
used once.

Write a method that returns true if the word passed in as an argument can be
spelled from this set of blocks, false otherwise.



Restate the problem:

Create a method that takes a string for an argument, and returns `true` if the
given string can be spelled out using the letter blocks. The string may only use
one letter from each block.


Input: String

Output: Boolean




Explicit Rules:
- the letters on each block can only be used once
- only one letter from each block may be used



Implicit Rules:
- case doesn't matter


Modelling:

Letter blocks:

B:O   X:K   D:Q   C:P   N:A G:T   R:E   F:S   J:W   H:U V:I   L:Y   Z:M

Given String => 'BATCH'

[[B, O], [X, K], [C, P]...]

We want to check if the current letter on iteration is contained in one of the
subarrays

And if it is, we can remove that sub-array, because neither of the letters will
be usable


---------------- Examples

block_word?('BATCH') == true block_word?('BUTCH') == false block_word?('jest')
== true

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string */

Initialize `letter_blocks` to our collection of letter blocks
Initialize `str` to the downcase string
Initialize `result` to `true`

Iterate through `letter_blocks`
  - If both letters in the current block appear within the chars of the given
    string, reassign `result` to `false`
  - If not, move on to the next iteration

Return `result`

=end

def block_word?(str)
  letter_blocks = [
    ['b', 'o'],
    ['x', 'k'],
    ['d', 'q'],
    ['c', 'p'],
    ['n', 'a'],
    ['g', 't'],
    ['r', 'e'],
    ['f', 's'],
    ['j', 'w'],
    ['h', 'u'],
    ['v', 'i'],
    ['l', 'y'],
    ['z', 'm']
  ]
  str = str.downcase
  result = true

  letter_blocks.each do |block|
    if str.chars.include?(block[0]) && str.chars.include?(block[-1])
      result = false
    end
  end

  result
end


p block_word?('BATCH') == true
p block_word?('BUTCH') == false
p block_word?('jest') == true