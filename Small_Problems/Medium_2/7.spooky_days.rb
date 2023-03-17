=begin
---------------- Problem

Write a method that returns the number of Friday the 13ths in the year given by
an argument. You may assume that the year is greater than 1752 (when the United
Kingdom adopted the modern Gregorian Calendar) and that it will remain in use
for the foreseeable future.


Restate the problem:

Create a method that accepts an integer as an argument, and returns the amount
of Friday the 13ths in that year. 


Input: Integer

Output: Integer




Explicit Rules:
- need to find the amount of friday the 13ths in the year



Implicit Rules:
- none identified


Modelling:




---------------- Examples

friday_13th(2015) == 3
friday_13th(1986) == 1
friday_13th(2019) == 2

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given an integer `year` */

Require the 'date' class

Initialize `spook_days` to 0

Iterate through the range of nums 1-12 (inclusive)
  - if the 13th day of the current month is on a friday, increment `spooky_days`
    by 1, if not, move onto the next month

Return `spooky_days`


=end

require 'date'

def friday_13th(year)
  spooky_days = 0

  (1..12).each do |month|
    if Date.new(year, month, 13).friday?
      spooky_days += 1
    end
  end

  spooky_days
end

p friday_13th(2015) == 3
p friday_13th(1986) == 1
p friday_13th(2019) == 2