=begin

Leap Years (Part 1)

In the modern era under the Gregorian Calendar, leap years occur in every year
that is evenly divisible by 4, unless the year is also divisible by 100. If the
year is evenly divisible by 100, then it is not a leap year unless the year is
evenly divisible by 400.

Assume this rule is good for any year greater than year 0. Write a method that
takes any year greater than 0 as input, and returns true if the year is a leap
year, or false if it is not a leap year.

P:

True Conditions: 
1) year % 4 == 0
2) if year % 4 == 0, but year % 100 == 0 too, then false
3) if year % 4 == 0, year % == 0, and year % 400 == 0, true

Need to create a method that takes one argument (an integer), and returns either
true or false if that method is a leap year. A leap year is any year that is 
evenly divisble by 4, unless it is ALSO evenly divisble by 100, in which case it
is not a leap year, UNLESS it is evenly divisible 400.

Explicit Rules:
- must return true or false if the given number is a leap year
- leap years are evenly divisble by 4 unless it is divisible by 100, in which
case it must also be divisible by 400 to be a leap year
- given year must be greater than 0

Implicit Rules:
- given year can be any number

Mental Model:
- a leap year must be divisible by 4, and not divisble by 100

OR

- leap year must be divisble by 4 and 400, if it is also divisble by 100

E/TC:

leap_year?(2016) == true
leap_year?(2015) == false
leap_year?(2100) == false
leap_year?(2400) == true
leap_year?(240000) == true
leap_year?(240001) == false
leap_year?(2000) == true
leap_year?(1900) == false
leap_year?(1752) == true
leap_year?(1700) == false
leap_year?(1) == false
leap_year?(100) == false
leap_year?(400) == true

D:

Input: Integer
Output: Boolean

- To check if a number is evenly divisble by 4, 100, or 400, we can use the `%`
operator. If it returns 0, it's evenly divisible, if it returns a number `>=1`,
it is not evenly divisble.

A (High Level):

create a method called `leap_year` that has one paramter: `year`
- return true if `year` / 4 has a remainder of 0
a) if the number is `year` / 4 has a remainder of 0, but also has a remainder
of 0 when divided by 100, and a remainder of 0 when divided by 400, return true
b) if `year` / 4 has a remainder of 0, and `year` divided by 100 has a remainder
of 0, but has a remainder of >= 1 when divided by 400, return false
c) return false otherwise

C:
=end


def leap_year?(year)
  if year % 4 == 0 && year % 100  >=1
    true
  elsif year % 4 == 0 && year % 100 == 0 && year % 400 == 0
    true
  elsif year % 4 == 0 && year % 100 == 0 && year % 400 >= 1
    false
  else
    false
  end
end

p leap_year?(2016) == true
p leap_year?(2015) == false
p leap_year?(2100) == false
p leap_year?(2400) == true
p leap_year?(240000) == true
p leap_year?(240001) == false
p leap_year?(2000) == true
p leap_year?(1900) == false
p leap_year?(1752) == true
p leap_year?(1700) == false
p leap_year?(1) == false
p leap_year?(100) == false
p leap_year?(400) == true