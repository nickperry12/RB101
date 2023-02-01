=begin

Lettercase Counter

Write a method that takes a string, and then returns a hash that contains 3
entries: one represents the number of characters in the string that are
lowercase letters, one the number of characters that are uppercase letters, and
one the number of characters that are neither.

P:

Restate the problem:

Create a method that takes a string for an argument, and returns a hash, where
the keys are uppercase, lowercase and neither, and the values are the counts of
each type of those characters.

Input: String
Output: Hash

Explicit Rules:
- hash should contain the following keys: uppercase, lowercase, neither
- the values should be the counts of those characters

Implicit Rules:
- neither represents all characterse that are non-alpahetical
- if the string is empty, all value should equal 0
- the keys should be symbols

Examples:

letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }

D:

- #each_with_object comes to mind, can use this to build our hash, while at the
same time iterating through the characters in our string

- #chars to split the string into chars

A:

/* given a string */

1. split the string into chars
2. initialize `case_count` and set to {uppcase: 0, lowercase: 0, neither: 0}
3. iterate through the chars
4. if the char is uppercase, increment the uppcase key's value by 1
5. if the chars is lowercase, increment the lowercase key's value by 1
6. if the char is neither, increment the lowercase key's value by 1
7. return the hash

=end

def letter_case_count(string)
  string.chars.each_with_object({lowercase: 0, uppercase: 0, neither: 0}) do |char, hash|
    if (('a'..'z').to_a + ('A'..'Z').to_a).include?(char) == false
      hash[:neither] += 1
    elsif char == char.upcase
      hash[:uppercase] += 1
    else
      hash[:lowercase] += 1
    end
  end
end


p letter_case_count('abCdef 123') == { lowercase: 5, uppercase: 1, neither: 4 }
p letter_case_count('AbCd +Ef') == { lowercase: 3, uppercase: 3, neither: 2 }
p letter_case_count('123') == { lowercase: 0, uppercase: 0, neither: 3 }
p letter_case_count('') == { lowercase: 0, uppercase: 0, neither: 0 }