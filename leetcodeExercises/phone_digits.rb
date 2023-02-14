=begin
---------------- Problem

Given a string containing digits from 2-9 inclusive, return all possible letter
combinations that the number could represent. Return the answer in any order.

A mapping of digits to letters (just like on the telephone buttons) is given
below. Note that 1 does not map to any letters.


Restate the problem:

Create a method, that takes a string as an argument. The given string will have
two digits, each representing the numbers on a phone, here each digit contains
`n` possible letters it could represent. The digit `1` does not represent any
letters. We are only using the range of digits from 2-9 inclusive. Our method
should return an array containing all possible letter combinations that the
given number could represent. 


Input: String

Output: Array of strings




Explicit Rules:
- Only using the digits from 2-9 (inclusive)
- Must return all possible letter combinations
- Our given string, can have anywhere from 0 to 4 digits
- If the given string is empty, return an empty array



Implicit Rules:


---------------- Modelling

Given digits: "23" => ["ad","ae","af","bd","be","bf","cd","ce","cf"]

Letters represented by "2" => ["a", "b", "c"]
Letters represented by "3" => ["d", "e", "f"]

Iterating through both arrays, and we're combining outer_idx 0 with each
inner_idx, until we've combined outer_idx with each letter at inner_idx

First iteration:

outer_idx 0 + inner_idx 0 => "ad"
outer_idx 0 + inner_idx 1 => "ae"
outer_idx 0 + inner_idx 2 => "af"

... Repeat for all indexes of outer and inner




---------------- Examples
p letter_combinations("23") == ["ad","ae","af","bd","be","bf","cd","ce","cf"]
p letter_combinations("") == []
p letter_combinations("2") == ["a","b","c"]
p letter_combinations("463") == ["gdm", "gdn", "gdo", "gem", "gen", "geo",
                                 "gfm", "gfn", "gfo", "hdm", "hdn", "hdo",
                                 "hem", "hen", "heo", "hfm", "hfn", "hfo",
                                 "idm", "idn", "ido", "iem", "ien", "ieo",
                                 "ifm", "ifn", "ifo"]





---------------- Data Structures

Array
Hash => keys are a single digit, values contain letters they represent



---------------- Scratchboard






---------------- Algorithm

Intiailize a constant variable `NUMPAD` to a hash
  - set each key to a digit from the inclusive range of 2-9
    - set each value to the corresponding letters they represent on a phone key
      pad

/* given a string */

Split the given string into chars and store into an array `nums`
Initialize `letters` and set to an empty collection

Iterate through `nums`, and for each `num` on iteration:
  - Add the values from our `NUMPAD` hash at the `num` key
    - This should give us an array of nested arrays, with each subarray
      containing the associated values for each `num` key

Find all the possible combinations of all elements from all the nested arrays
  - Iterate through the new array and join the strings in the nested arrays

Return the result

If the given string is empty, return an empty array
If the given string has a size of 1, return the associated value at that key
=end

NUMPAD = {
  "2" => %w(a b c),
  "3" => %w(d e f),
  "4" => %w(g h i),
  "5" => %w(j k l),
  "6" => %w(m n o),
  "7" => %w(p q r s),
  "8" => %w(t u v),
  "9" => %w(w x y z)
}

def letter_combinations(digits)
  return [] if digits.empty?
  return NUMPAD[digits] if digits.size == 1

  nums = digits.chars
  letters = []

  nums.each do |num|
    letters << NUMPAD[num]
  end

  letters.inject(&:product).map(&:join)
end





p letter_combinations("23") == ["ad","ae","af","bd","be","bf","cd","ce","cf"]
p letter_combinations("") == []
p letter_combinations("2") == ["a","b","c"]
p letter_combinations("463") == ["gdm", "gdn", "gdo", "gem", "gen", "geo",
                                 "gfm", "gfn", "gfo", "hdm", "hdn", "hdo",
                                 "hem", "hen", "heo", "hfm", "hfn", "hfo",
                                 "idm", "idn", "ido", "iem", "ien", "ieo",
                                 "ifm", "ifn", "ifo"]



def letter_combinations(digits)
  return [] if digits.empty?
  return PHONE_KEYPAD[num] if digits.size == 1
  nums = digits.chars
  letters = []
  result = []

  nums.each do |num|
    letters << PHONE_KEYPAD[num]
  end

  0.upto(letters[0].size - 1) do |outer_idx|
    0.upto(letters[0].size - 1) do |inner_idx|
      result << letters[0][outer_idx] + letters[1][inner_idx]
    end
  end
  
  result
end