=begin

After Midnight Part 1

The time of day can be represented as the number of minutes before or after
midnight. If the number of minutes is positive, the time is after midnight. If
the number of minutes is negative, the time is before midnight.

Write a method that takes a time using this minute-based format and returns the
time of day in 24 hour format (hh:mm). Your method should work with any integer
input.

You may not use ruby's Date and Time classes.

P:

Need to create a method that takes a given integer and returns the time of day
in 24-hour format. If the given integer is negative, we subtract that amount of
minutes from midnight, and add those minutes if the given integer is positive.
E.g, if the given integer is 60, the time would be 01:00.

Rules:

- Time must be represented in 24 hour format
- Cannot use `Date` and `Time` classes
- If the integer is negative, subtract that amount of minutes from midnight
- If positive, add the amount of minutes to midnight

Notes:

- We can use the `Integer#divmod` method on the given integer to give us the
hours and minutes. For example, if we performed the following operation,
`90.divmod(60)` it would return => [1, 30]. This would be 1 hour and 30 mins.

- Knowing this, how can we use this to find the time? We can add the first
number of the index (in this example it would be 1) to 00:00. This gives us
01:00. Next we would add 30 to the right side of the colon, giving us 01:30.

- But how do we handle if the number is negative? Or if the number is greater
than 1440 (the number of minutes in a day)?

- The calculation with `divmod` should still work. But, what do the results in
the returned array represent? Something we need to think about. When the number
is less than 1440 (the minutes in a day), the first number in our return array
will always be 0 we we use `divmod(1440)`. So, we can assume that the first number
in that array will be the number of days. When we call `divmod(1440)` on 1441,
we can array of `[1,1]`. 1 day and 1 minute.

- We can then call `divmod(60)` on the second integer in that array, in this
case 1, which will return an array containing 2 numbers that represent the
hours and minutes.

- This works with negative numbers too. Even though we can a negative integer in
our first array when we call `divmod(1440)` on a negative integer, the second
number is positive and is the only number we are concerned with, as that number
is the one we use to get our hours and minutes. 



E/TC:

time_of_day(0) == "00:00"
time_of_day(-3) == "23:57"
time_of_day(35) == "00:35"
time_of_day(-1437) == "00:03"
time_of_day(3000) == "02:00"
time_of_day(800) == "13:20"
time_of_day(-4231) == "01:29"

D: 

Input: Positive or negative integer
Output: String in 24 hour time format

Algo (High Lvl):

Given an integer
- divide the integer by 1440 and take the result and the remainder and store
them in a collection
- take the second number in that collection and divide it by 60, and store the
result and the remainder in a separate collection
- the two numbers in the second collection represent the time, format to
represent the hours and minutes in 24 hour format
=end

def time_of_day(minutes)
  days, total_mins = minutes.divmod(1440)
  hours, mins = total_mins.divmod(60)
  p format('%02d:%02d', hours, mins)
end

p time_of_day(0) == "00:00"
p time_of_day(-3) == "23:57"
p time_of_day(35) == "00:35"
p time_of_day(-1437) == "00:03"
p time_of_day(3000) == "02:00"
p time_of_day(800) == "13:20"
p time_of_day(-4231) == "01:29"