=begin

ddaaiillyy ddoouubbllee

Write a method that takes a string argument and returns a new string that
contains the value of the original string with all consecutive duplicate
characters collapsed into a single character. You may not use String#squeeze or
String#squeeze!.

P: 

Create a method that takes a string and returns a new string that removes all
the consecutive duplicates characters. Cannot use `String#squeeze`

The duplicate letters must be consecutive. For example, if we had the string
"aanimal", we couldn't simply just remove all the extra 'a' values, we need
to only remove the consecutive 'a's

To handle this, we can split the string into an array of characters, and then
iterate through that array, check to se if the value at the next index is
the same as the current, and if it is, substitute that value out


Examples:

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''


D:

Input: String
Intermediate: Array of string's characters
Output: New String

Algo:

/* given a string */

1) split the word into characters
2) iterate over the characters
3) check to see if the next character is the same as the current
4) if it is, sub the first instance of that character out
5) join the characters together
6) return the new word
=end

def crunch(string)
  letters = string.chars

  letters.each_with_index do | letter, idx |
    if letters[idx] == letters[idx+1]
      letters[idx].sub!(letter, '')
    end
  end.join

  end

p crunch('ddaaiillyy ddoouubbllee') == 'daily double'
p crunch('4444abcabccba') == '4abcabcba'
p crunch('ggggggggggggggg') == 'g'
p crunch('a') == 'a'
p crunch('') == ''