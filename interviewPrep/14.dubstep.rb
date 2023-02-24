=begin
---------------- Problem

Polycarpus works as a DJ in the best Berland nightclub, and he often uses
dubstep music in his performance. Recently, he has decided to take a couple of
old songs and make dubstep remixes from them.

Let's assume that a song consists of some number of words (that don't contain
WUB). To make the dubstep remix of this song, Polycarpus inserts a certain
number of words "WUB" before the first word of the song (the number may be
zero), after the last word (the number may be zero), and between words (at least
one between any pair of neighbouring words), and then the boy glues together all
the words, including "WUB", in one string and plays the song at the club.

For example, a song with words "I AM X" can transform into a dubstep remix as
"WUBWUBIWUBAMWUBWUBX" and cannot transform into "WUBWUBIAMWUBX".

Recently, Jonny has heard Polycarpus's new dubstep track, but since he isn't
into modern music, he decided to find out what was the initial song that
Polycarpus remixed. Help Jonny restore the original song.

Input

The input consists of a single non-empty string, consisting only of uppercase
English letters, the string's length doesn't exceed 200 characters

Output

Return the words of the initial song that Polycarpus used to make a dubsteb
remix. Separate the words with a space.

Examples

song_decoder("WUBWEWUBAREWUBWUBTHEWUBCHAMPIONSWUBMYWUBFRIENDWUB") => WE ARE THE
CHAMPIONS MY FRIEND


Restate the problem:

Create a method that accepts a string as an argument (may assume that all chars
will be uppercase and length is <= 200), and returns a new string with every
"WUB" removed.


Input: String

Output: String




Explicit Rules:
- return a string with all "WUB"s removed, with no leading or trailing white
space, and all remaining words separated by a space



Implicit Rules:
- none identified


Modelling:




---------------- Examples






---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given a string `str` */

Remove the following pattern from the string and replace with a space
  - Pattern: WUB

Remove all leading and trailing whitespace from the string


=end

def song_decoder(str)
  str = str.gsub(/(WUB)/, ' ').strip.gsub(/(\s+)/, ' ')
end


p song_decoder("AWUBBWUBC") == "A B C"
p song_decoder("AWUBWUBWUBBWUBWUBWUBC") == "A B C"
p song_decoder("WUBAWUBBWUBCWUB") == "A B C"
