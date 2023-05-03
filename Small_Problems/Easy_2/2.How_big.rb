=begin
How big is the room? Build a program that asks a user for the length and width
of a room in meters and then displays the area of the room in both square meters
and square feet.

Note: 1 square meter == 10.7639 square feet

Do not worry about validating the input at this time.

Example

Enter the length of the room in meters: 10 Enter the width of the room in
meters: 7 The area of the room is 70.0 square meters (753.47 square feet).

P:

Method will take two arguments
 - length and width in meters
 - return will be the area of the room in square meters and square feet
 - 1 square meter = 10.7639 sq ft

 create a method called calculate_area that takes two arguments (length, width)
  - intialize a variable called area_in_meters
   - calculate the length x width in meters
  
   - intialize a variable `area_in_sqft` - convert square meteres to square feet
    - (length_meters x width_meters) x 10.7639


  - output both results in a string
=end

def calculate_area(length, width)
  area = length * width
  sqft = (area) * 10.7639

  puts "The area in meters is #{area}."
  puts "The square footage is #{sqft.round(2)}."
end

calculate_area(10, 7)