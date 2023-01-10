=begin

Cute angles

Write a method that takes a floating point number that represents an angle
between 0 and 360 degrees and returns a String that represents that angle in
degrees, minutes and seconds. You should use a degree symbol (°) to represent
degrees, a single quote (') to represent minutes, and a double quote (") to
represent seconds. A degree has 60 minutes, while a minute has 60 seconds.

P:

Restate the question:

Create a method that takes a float (an integer with a decimal) that represents
an angle between 0 and 360 degrees. The method should take the given float and
return a string that represents the angle in degrees, minutes and seconds.

A degree has 60 minutes and a minute has 60 seconds.

Explicit Rules:

- method should return a string that represents the angle in degrees, minutes
and seconds

Implicit Rules:

- none identified

Mental Model:

- The given float will represent our angle in degrees, what we need to figure
out is how to find the minutes and seconds from our given float.

- The information provided tells us that a degree has 60 minutes, while a minute
has 60 seconds.

- 1° == 60 minutes == 3600 seconds
- To find our given float in degrees, we multiply the current number by 1
- To find our given float in minutes, we multiply it by 60

A:

/* given a float number */

1. initialize var degrees and set it to float * 1 and convert to a whole number
2. initiaize var minutes and set it to the remainder of the float modulo 60
3. initiaize var seconds and set it to the remainder of minutes modulo 60
4. out the degrees, minutes and seconds in the following sentence format:
degrees°minutes'seconds"

=end

def dms(float)
  degrees = float.to_i
  minutes = (float * 60).divmod(60)[1].to_i
  seconds = (float * 60 * 60).divmod(60)[1].to_i

  format(%(#{degrees}°%02d'%02d"), minutes, seconds)
end


p dms(30) == %(30°00'00")
p dms(76.73) == %(76°43'48")
p dms(254.6) == %(254°36'00")
p dms(93.034773) == %(93°02'05")
p dms(0) == %(0°00'00")
p dms(360) == %(360°00'00") || dms(360) == %(0°00'00")
