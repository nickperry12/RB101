# DESCRIPTION:
# Your task is to Reverse and Combine Words. It's not too difficult, but there
# are some things you have to consider...

# So what to do?
# Input: String containing different "words" separated by spaces

# 1. More than one word? Reverse each word and combine first with second, third
#    with fourth and so on... (odd number of words => last one stays alone, but
#    has to be reversed too)
# 2. Start it again until there's only one word without spaces
# 3. Return your result...
# Some easy examples:
# Input:  "abc def"
# Output: "cbafed"

# Input:  "abc def ghi 123"
# Output: "defabc123ghi"

# Input:  "abc def gh34 434ff 55_eri 123 343"
# Output: "43hgff434cbafed343ire_55321"
=begin
---------------- Problem
Restate the problem:

Create a method that accepts a string for an argument, and splits the given
string into a collection of words. The method should combine the first and
second word, the third and fourth etc., and reverse the order of their chars.
It should repeat this until we're left with a single word with no spaces.


Input: String

Output: String

Explicit Rules:
- reverse the chars of each word
- combine the first word with the second, third with fourth, etc.


Implicit Rules:
- none implied


Modelling:

I: "abc def"
O: "cbafed"

['abc', 'def']
[['abc', 'def']]
[['cba', 'fed']]
[['cbafed']]
'cbafed'

I: "234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44"
O: "trzwqfdstrteettr45hh4325543544hjhjh21lllll"

["234hh54", "53455", "sdfqwzrt", "rtteetrt", "hjhjh", "lllll12", "44"]
[["234hh54", "53455"], ["sdfqwzrt", "rtteetrt"], ["hjhjh", "lllll12"] ["44"]]

if subarr size == 1
  reverse the subarr
else
  subarr[0], subarr[-1] = subarr[-1], subarr[0]
  subarr.join
end

Join together with a space

Repeat until the joined array contains no spaces
---------------- Examples

p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"

---------------- Data Structures

I: String
Intermediate: Array
O: String

---------------- Algorithm

/* given a string `str` */

Split `str` into an array of words, assign to `words`

Until `words` joined has no spaces
  - Create slices of 2 words
    - Iterate over the collection of paired words
      - Reverse the chars of the words
      - Swap the places of the words
      - Join the words together
  - Join `words` together

=end

def reverse_and_combine_text(str)
  until !(str.include?(' '))
    words = str.split
    words.map!(&:reverse)
    words = words.each_slice(2).to_a
    words.map!(&:join)
    str = words.join(' ')
  end

  str
end

p reverse_and_combine_text("abc def") == "cbafed"
p reverse_and_combine_text("abc def ghi jkl") == "defabcjklghi"
p reverse_and_combine_text("dfghrtcbafed") == "dfghrtcbafed"
p reverse_and_combine_text("234hh54 53455 sdfqwzrt rtteetrt hjhjh lllll12  44") == "trzwqfdstrteettr45hh4325543544hjhjh21lllll"
p reverse_and_combine_text("sdfsdf wee sdffg 342234 ftt") == "gffds432243fdsfdseewttf"