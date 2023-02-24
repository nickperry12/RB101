=begin
---------------- Problem

A string is considered to be in title case if each word in the string is either
(a) capitalised (that is, only the first letter of the word is in upper case) or
(b) considered to be an exception and put entirely into lower case unless it is
the first word, which is always capitalised.


Write a function that will convert a string into title case, given an optional
list of exceptions (minor words). The list of minor words will be given as a
string with each word separated by a space. Your function should ignore the case
of the minor words string -- it should behave in the same way even if the case
of the minor word string is changed.


Restate the problem:

Create a method that accepts two arguments, arg1 and arg2, both of which are
strings, and returns arg1 but converted to title case. `arg2` will be a string
of words that are exempt from conversion. Title case is the first letter of each
word capitalized and the rest lowercased. 


Input: String

Output: String




Explicit Rules:
- only modify words that not included in arg2



Implicit Rules:
- none identified


Modelling:




---------------- Examples

p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'


---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given two strings, `arg1` and `arg2` */

Initialize `exempt` to the split words of `arg2`

Split `arg1` into a collection of words
  - Iterate through this collection
    - If the word is included in `exempt` and isn't at index 0 downcase the word
    - If the word is not exempt, downcase the word, and then capitalize the
      first letter

Join the collection of words back together and separate with a space


=end

def title_case(arg1, arg2 = '')
  exempt = arg2.split.map(&:downcase)

  arg1.split.map.with_index do |word, idx|
    if exempt.include?(word.downcase) && idx != 0
      word.downcase
    else
      word.downcase.capitalize
    end
  end.join(' ')
end




p title_case('a clash of KINGS', 'a an the of') == 'A Clash of Kings'
p title_case('THE WIND IN THE WILLOWS', 'The In') == 'The Wind in the Willows'
p title_case('the quick brown fox') == 'The Quick Brown Fox'
