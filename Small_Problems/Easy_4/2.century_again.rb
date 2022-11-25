=begin

What Century is That?

Write a method that takes a year as input and returns the century. The return
value should be a string that begins with the century number, and ends with st,
nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years 1901-2000 comprise
the 20th century.

P: 

Create a method that has one parameter, which an integer is passed in as an
argument. The integer represents the year. The method should take the year
and convert it to it's respective century. The return value should be a string
object, and should end with the appropriate suffix, e.g., 21st, 20th, 13th etc.
New centuries begin on years that end with 01. For example the 21st century goes
from the year 2001 - 2100. 

Explicit Rules:
- centuries must end with the appropriate suffix
- method should return a string

Implicit Rules:
- The century should contain digits followed by the appropriate suffix

Mental Model:

- To get the century we can divide the given year by 100. If the result of that
operation isn't a whole number, then it's the next century. E.g., 2000/100 is
= 20, so it would be th 20th century. 2005/100 = 20.05, therefore it would be
the 21st century. 

- Centuries 10-19 all have the same suffix ('th') as those are the teen years
- 

E/TC:

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

D:

Input: Integer
Output: String

To handle the suffixes, we can use a case statement for all years that aren't
the teen years.

Could use a `case` statement in an `if` statement
if teen years
  append 'th'
else
  case statement
end

A (High Level):

create a method called `century` that has one parameter: (`year`)
- if year % 100 == 0, the century is equal to year / 100
- if year % 100 != 1, the century is equal to year / 100 + 1
- take the return value of the above operations and convert it to a string
- append the appropriate suffix to the string
- return the final string

C:
=end

def century(year)
  century = year % 100 == 0 ? year / 100 : year / 100 + 1
  century = century.to_s
  
  if century[-2] == '1' || century.length == 2 && century[0] == 1
    century << 'th'
  else
    case century[-1]
    when '1'
      century << 'st'
    when '2'
      century << 'nd'
    when '3'
      century << 'rd'
    else
      century << 'th'
    end
  end

  century
end

p century(2000) == '20th'
p century(2001) == '21st'
p century(1965) == '20th'
p century(256) == '3rd'
p century(5) == '1st'
p century(10103) == '102nd'
p century(1052) == '11th'
p century(1127) == '12th'
p century(11201) == '113th'