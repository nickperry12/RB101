=begin

*** REVISIT THIS PROBLEM AFTER MORE STUDYING ***

Practice Problem 2

How would you order this array of hashes based on the year of publication of
each book, from the earliest to the latest?

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez', published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]
=end

books = [
  {title: 'One Hundred Years of Solitude', author: 'Gabriel Garcia Marquez',
    published: '1967'},
  {title: 'The Great Gatsby', author: 'F. Scott Fitzgerald', published: '1925'},
  {title: 'War and Peace', author: 'Leo Tolstoy', published: '1869'},
  {title: 'Ulysses', author: 'James Joyce', published: '1922'}
]

sorted = books.sort_by do |book|
  book[:published]
end

p sorted

=begin

We can use sort_by and access a particular value in each hash by which to sort,
as long as those values have a <=> method.

In this case, all the values for :published are strings so we know that we can
compare them. Since all the values in question are four characters in length, in
this case we can simply compare the strings without having to convert them to
integers.

=end