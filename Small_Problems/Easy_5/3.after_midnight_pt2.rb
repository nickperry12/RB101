=begin

After Midnight (Part 2) As seen in the previous exercise, the time of day can be
represented as the number of minutes before or after midnight. If the number of
minutes is positive, the time is after midnight. If the number of minutes is
negative, the time is before midnight.

Write two methods that each take a time of day in 24 hour format, and return the
number of minutes before and after midnight, respectively. Both methods should
return a value in the range 0..1439.

You may not use ruby's Date and Time methods.

Examples:

after_midnight('00:00') == 0
before_midnight('00:00') == 0
after_midnight('12:34') == 754
before_midnight('12:34') == 686
after_midnight('24:00') == 0
before_midnight('24:00') == 0

Need two methods that take a String that represents the time in a 24 hour format
e.g., "04:32", that returns the number of minutes before and after midnight.
Using the example "04:32", our method should return 272. This integer represents
272 minutes past midnight.One method should handle the minutes past midnight,
the other method should handle the minutes before midnight. 

Notes:

- the given time doesn't determine what method we use, more so the methods just
  do different things.

- if we pass in a string that represents the same time, each method should
  return a different number. E.g, time = "12:34", one method should return 754
  minutes past midnight, the second method should return 686 minutes before
  midnight

- previously we used the `#divmod` method to find the numbers associated with
  our time, what kind of operation can we perform to do the same here?

Possible Solution:

- We could split the string into individual characters, and remove any
  characters that aren't alphanumeric, and then convert them into integers. The
  characters on the left should be joined together before converting to an
  integer, the characters on the right should do the same. If we stored them
  into an array, the integer at the first index would represent the hours, the
  second would represent the minutes. We would want to convert the hours to
  minutes, so multiply the first integer by 60, and add the second integer to
  get our total minutes.

Algo (High Lvl):

- given a string that represents the time in 24hr format
1) split the time into two separate digits, 1 set of digits being from the 
   left side of the colon, the second set of digits being to the right
2) convert the digits into the integers they represent
3) multiply the first integer by 60, then add it to the second integer
4) if we're trying to find the minutes past midnight, do no more calculations
5) if we're trying to find the minutes before midnight, subtract that number
   from 1440 and return the result
=end

def after_midnight(time)
  hours_mins = Array.new
  hours_mins << time[0..1]
  hours_mins << time[-2..-1]
  hours_mins.map! do |digits|
    digits.to_i
  end
  mins_past_mid = hours_mins[0] * 60 + hours_mins[1]
  if mins_past_mid == 1440
    mins_past_mid -= 1440
  else
    mins_past_mid
  end
end

def before_midnight(time)
  hours_mins = Array.new
  hours_mins << time[0..1]
  hours_mins << time[-2..-1]
  hours_mins.map! do |digits|
    digits.to_i
  end
  mins_bef_mid = 1440 - (hours_mins[0] * 60 + hours_mins[1])
  if mins_bef_mid == 1440
    mins_bef_mid -= 1440
  else
    mins_bef_mid
  end
end


p after_midnight('00:00') == 0
p before_midnight('00:00') == 0
p after_midnight('12:34') == 754
p before_midnight('12:34') == 686
p after_midnight('24:00') == 0
p before_midnight('24:00') == 0