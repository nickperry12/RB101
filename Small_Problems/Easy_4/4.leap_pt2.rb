=begin

Leap Years (Part 2) A continuation of the previous exercise.

The British Empire adopted the Gregorian Calendar in 1752, which was a leap
year. Prior to 1752, the Julian Calendar was used. Under the Julian Calendar,
leap years occur in any year that is evenly divisible by 4.

Using this information, update the method from the previous exercise to
determine leap years both before and after 1752.

P:

In this problem, we need to modify our `leap_year?` method to check if the given
year is before or after 1752. Prior to 1752, any year that is evenly divisble
by 4 is a leap year. 1752 and onward, anything year that is divisible by 4 is a
leap year, but if it was also divisble by 100, it was not, unless it was also 
evenly divisble by 400. Modify the method to reflect these new rules.

Explicit Rules:
- The only true condition prior to year 1752 is the year being evenly divisble
by 4
- 1752 and onward have the same true conditions as the previous problem

Implicit Rules:
- Same as previous

Mental Model:

Before the year 1752:
- Any year evenly divisble by 4 is a leap year

From year 1752 and onward:
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
leap_year?(1700) == true
leap_year?(1) == false
leap_year?(100) == true
leap_year?(400) == true

D:

Input: Integer
Output: Boolean

- How can we simplify our previous method and make it more idiomatic?
- Could try and use the logic in a ternary operation
- Can use either an `if` or `case` statement to handle whether the year is
before or after 1752

(true condition 1 || true condition 2) ? true : false

A (High Level):

create method `leap_year?` that has one parameter
- when the year is before 1752
a) return true if the year is evenly divisible by 4
b) false if not
- when the year is 1752 or after
a) return true if any of the following true conditons are satisfied:
  1) year % 4 == 0 && year % 100 != 0
  2) year % 400 == 0
b) return false otherwise
end

C:
=end

def leap_year?(year)
  if year < 1752
    year % 4 == 0
  elsif year >= 1752
    (year % 4 == 0 && year % 100 != 0 || year % 400 == 0) ? true : false
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
p leap_year?(1700) == true
p leap_year?(1) == false
p leap_year?(100) == true
p leap_year?(400) == true