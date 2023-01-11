=begin

Consider the word "abode". We can see that the letter a is in position 1 and b
is in position 2. In the alphabet, a and b are also in positions 1 and 2. Notice
also that d and e in abode occupy the positions they would occupy in the
alphabet, which are positions 4 and 5.

Given an array of words, return an array of the number of letters that occupy
their positions in the alphabet for each word.

Examples:

solve(["abode","ABc","xyzD"]) == [4,3,1]
solve(["abide","ABc","xyz"]) == [4,3,0]
solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) == [6,5,7]
solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]

P:

Restate the question:

Create a method that takes an array of strings as an argument, and returns an
array of integers. The integers represent the number of letters from each
string that match their numerical position in the alphabet. 

Explicit Requirements:

- In order for the letter to be selected, it must have the same position in it's
string as it does in the alphabet. E.g., in the string 'abode', 'a', 'b', 'd'
and 'e' occupy the 1, 2, 4, and 5 positions in the string, and those letters
also occupy the 1, 2, 4 and 5 positions in the alphabet.

Implicit Requirements:

- Your returned array should have an equal amount of integers in it as the array
of strings, as we can see from the provided examples. All the sizes of the given
arrays match the size of the returned arrays

- Will need to convert the strings to downcase to make sure the position in the
alphabet matches (ASCII order is different for uppercase and lowercase)

D:

- We can use a range where the numbers in the range represent the indexes of the
string and of the letter's position in the alphabet

- For exmaple, because our indexes start at 0, we can use an inclusive range of
(0..23), there are 24 numbers in this range and there are 24 numbers in the
alphabet. From there we need to see if the current letters index matches the 
position on the alphabet

A:

/* given an array of strings */

1. create an inclusive range from ('a'..'z'), convert it to an array, and assign
this array to the variable alphabet
2. initialize a variable 'counter' and set it to 0
3. iterate through the array of strings
4. on each iteration, split the string into chars
5. iterate through the chars, and if the index of that char is the same as that
chars index in the alphabet, increment counter by 1
6. add counter to the counted_chars array
7. return counted_chars

=end

def solve(array)
  alphabet = ('a'..'z').to_a
  char_counts = []
  counter = 0
  downcased_words = array.map(&:downcase)

  downcased_words.each do |word|
    word.chars.each_with_index do |_, idx|
      if word[idx] == alphabet[idx]
        counter += 1
      end
    end
    char_counts << counter
    counter = 0
  end

  char_counts
  
end



p solve(["abode","ABc","xyzD"]) == [4,3,1]
p solve(["abide","ABc","xyz"]) == [4,3,0]
p solve(["IAMDEFANDJKL","thedefgh","xyzDEFghijabc"]) #== [6,5,7]
p solve(["encode","abc","xyzD","ABmD"]) == [1, 3, 1, 3]
