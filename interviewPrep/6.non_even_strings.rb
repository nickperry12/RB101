=begin
---------------- Problem

Given a string of integers, return the number of odd-numbered substrings that can be formed.
For example, in the case of "1341", they are 1, 1, 3, 13, 41, 341, 1341, a total of 7 numbers.
solve("1341") = 7. See test cases for more examples.


Restate the problem:

Create a method that accepts one argument, a string representation of a number,
and returns the number of substrings that can be made where substring represents
and odd number.


Input: String

Output: Integer




Explicit Rules:
- Trying to find the amount of substrings that can be made where the substring
  represents an odd number



Implicit Rules:
- none implied


Modelling:




---------------- Examples

p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string */

Initialize `result` to []

Starting at index 0 up to string size (non inclusive)
  - Starting at the current index up to string size (non-inclusive)
    - Create a substring using the chars from index 0 to current index of `str`
      - If the we convert `substring` to an integer, and it's an odd number, add
        that substring to `result`
Return the size of `result`


=end

def solve(str)
  result = []

  (0...str.size).each do |i|
    (i...str.size).each do |ii|
      substring = str[i..ii]
      result << substring if substring.to_i.odd?
    end
  end

  result.size
end


p solve("1341") == 7
p solve("1357") == 10
p solve("13471") == 12
p solve("134721") == 13
p solve("1347231") == 20
p solve("13472315") == 28