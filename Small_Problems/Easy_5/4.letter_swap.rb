=begin

Letter Swap

Given a string of words separated by spaces, write a method that takes this
string of words and returns a string in which the first and last letters of
every word are swapped.

You may assume that every word contains at least one letter, and that the string
will always contain at least one word. You may also assume that each string
contains nothing but words and spaces

P:

Create a method that takes a given string (can either be a single word or
a sentence) and takes each word and replaces the first letter of each word with
the last, and replaces the last letter with the first

Explicit Rules:

- every word contains one letter
- string will always contain at elast one word
- no symbols or special characters

Implicit Rules:

- case matters (if the letter is capitalized, it should remain capitalized)

D:

Input: string
Intermediate: array of words (split string)
Output: string

Trying to swap the first and last index of each word, can use variable
assignment

word[0] = word[-1]

But how would we handle the last index?

We can initiaize variables and assign them the values of the first and last
index of each word

first = word[0]
last = word[-1]

And from there reassign the indexes in our words

word[0] = last
word[-1] = first

Examples:

swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
swap('Abcde') == 'ebcdA'
swap('a') == 'a'

A:

/* given a string */

1) split the string into individual words
2) initialize local variables `first` and `last`
a) assign `first` the value at index 0 of each word
b) assign `last` the value at the last index of each word
3) reassign the first index of each word to `last`
4) reassign the last index of each word to `first`
5) join the words togther separated by a space

=end

def swap(str)
  swapped_letters = str.split.each do |word|
    word[0], word[-1] = word[-1], word[0]
  end

  swapped_letters.join(' ')
end

p swap('Oh what a wonderful day it is') == 'hO thaw a londerfuw yad ti si'
p swap('Abcde') == 'ebcdA'
p swap('a') == 'a'

=begin

Futher Exploration

How come our solution passes word into the swap_first_last_characters method
invocation instead of just passing the characters that needed to be swapped?
Suppose we had this implementation:

def swap_first_last_characters(a, b)
  a, b = b, a
end

and called the method like this:

swap_first_last_characters(word[0], word[-1])

Would this method work? Why or why not?

Answer:

No, this wouldn't work. When we use the `String#[]` method, we are creating
copies of the values at the specified indexes to pass into the method. As a
result, the method has no direct effect on our original string.

Secondly, within the swap_first_last_letters method, we are using variable
reassignment, meaning `a` and `b` are being reassigned to different objects,
the original objects are not being mutated.

=end