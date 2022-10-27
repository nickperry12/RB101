=begin

What Century is That?
Write a method that takes a year as input and returns the century. The 
return value should be a string that begins with the century number, 
and ends with st, nd, rd, or th as appropriate for that number.

New centuries begin in years that end with 01. So, the years
1901-2000 comprise the 20th century.

Examples:

century(2000) == '20th'
century(2001) == '21st'
century(1965) == '20th'
century(256) == '3rd'
century(5) == '1st'
century(10103) == '102nd'
century(1052) == '11th'
century(1127) == '12th'
century(11201) == '113th'

Solution using PEDAC:

Understand the problem:

We're creating a method that takes an integer as for an argument. The integer
represents the year, the method should return the century. The
century should have the appropriate suffix appended to it e.g, if it 
ends with 1, the suffix would be 'st'

Explicit rules:
Input: year (integer)
Output: century (string)
Centuries go from years 1-100
Appropriate suffix should be appended to the century

Implicit rules:
Integer should be converted to a string

Things to clarify:
Are we mutating the object? Or are we returning a new object?

Algorithm:

Create a method called 'century' that takes one parameter
1. Take the given year and divide it be 100
2. If the year / 100 has no remainder, then the result is the century
2b. If the year / 100 does have a remainder, it is that century + 1
3. Once we have the century, it should be converted to a string
4. Append the appropriate suffix to the string
e.g., if it ends in 2, append the suffix 'nd'
5. return the value of the string
=end

def century(year)
  century = (year % 100) == 0 ? year / 100 : (year / 100) + 1
  string_century = century.to_s
  case string_century[-1]
  when '1'
    string_century + 'st'
  when '2'
    string_century + 'nd'
  when '3'
    string_century + 'rd'
  else
    string_century + 'th'
  end
end

puts century(2021)
puts century(1)
puts century(2000)
puts century(2751)