=begin

Bannerizer

Write a method that will take a short line of text, and print it within a box.

P:

Need to create a method that takes a string as an argument, and returns that
string centered in a banner.

The size of the banner is 4 characters across, and 5 characters down. This is
the default size if the given string is empty.

When the string is not empty, it is placed within the banner and is centered,
with a space before it and a space after it. Dashes must be added to the top and
bottom of the banner, the amount of dashes is equal to the size of the given string.


Example:

print_in_box('To boldly go where no one has gone before.')
+--------------------------------------------+
|                                            |
| To boldly go where no one has gone before. |
|                                            |
+--------------------------------------------+

print_in_box('')
+--+
|  |
|  |
|  |
+--+

D:

Input: String
Output: String

Algo: 

/* given a string */

1) set the top row of the banner to '+--+'
2) set the 2nd row of the banner to '|  |'
3) set the 3rd row of the banner to '|  |'
4) set the 4th row of the banner to '|  |'
5) set the bot row of the banner to '+--+'
6) add '-' to the top and bottom row, the amount being equal to the size of the
given string
7) insert the given string into the 3rd row of the banner and center it
8) add spaces (amount equal to string size) to the 2nd and 4th rows
9) output all the strings

=end

def print_in_box(string)
  top_row = '+--+'
  second_row = '|  |'
  third_row = '|  |'
  fourth_row = '|  |'
  bot_row = '+--+'

  top_row.insert(2, '-' * string.size)
  second_row.insert(2, ' ' * string.size)
  third_row.insert(2, string.center(string.size))
  fourth_row.insert(2, ' ' * string.size)
  bot_row.insert(2, '-' * string.size)

  puts top_row
  puts second_row
  puts third_row
  puts fourth_row
  puts bot_row
end

print_in_box('To boldly go where no one has gone before.')

print_in_box('')