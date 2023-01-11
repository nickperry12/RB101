=begin

Madlibs

Mad libs are a simple game where you create a story template with blanks for
words. You, or another player, then construct a list of words and place them
into the story, creating an often silly or funny story as a result.

Create a simple mad-lib program that prompts for a noun, a verb, an adverb, and
an adjective and injects those into a story that you create.

Restate the problem:

Write a method that creates a madlib program. Have it prompt theuser to enter a
noun, a verb, an abverb and an adjective. The program should then take each of
those entries and places them into a story.

Explicit Rules:

- Requires a noun, verb, adverb and adjective

Implicit Rules:

- The words must be used correctly
- In the given example, we don't use a noun where a verb would etc..

Mental Model:

A noun is a person, place, or thing
A verb is an action
An adverb is a word that modifies or describes an action
An adjective is a word that modifies or describes a noun

Example

Enter a noun: dog
Enter a verb: walk
Enter an adjective: blue
Enter an adverb: quickly

Do you walk your blue dog quickly? That's hilarious!

D:

Input: String
Output: String

Algo:

1. set variables for the following
a) noun
b) verb
c) adverb
d) adjective
2. prompt the user to enter one of each type of word
3. assign each word to the appropriate variable
4. write a sentence out that tells a story
5. place the words into the sentence in a way that makes sense

=end

def madlib(noun, adjective, verb, adverb)
  puts "The very #{adjective} #{noun} went to the field and #{verb} #{adverb}. It was so cool!"
end

puts "Please enter a noun:"
noun = gets.chomp

puts 'Please enter a verb:'
verb = gets.chomp

puts 'Please enter an adverb:'
adverb = gets.chomp

puts 'Please enter an adjective:'
adjective = gets.chomp

madlib(noun, adjective, verb, adverb)