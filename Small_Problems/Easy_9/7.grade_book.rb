=begin
---------------- Problem

Write a method that determines the mean (average) of the three scores passed to
it, and returns the letter value associated with that grade.

Numerical Score Letter	Grade
90 <= score <= 100	    'A'
80 <= score < 90	      'B'
70 <= score < 80	      'C'
60 <= score < 70	      'D'
0 <= score < 60	        'F'

Restate the problem:

Create a method that takes 3 arguments, all integers. The method should find the
average of the scores and return the associated letter grade


Input: Integer

Output: String




Explicit Rules:
- find the average and returnd the associated average



Implicit Rules:
- none identified


Modelling: 




---------------- Examples

get_grade(95, 90, 93) == "A"
get_grade(50, 50, 95) == "D"



---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given three integers */

Find the average of the given integers
  - add all 3 together and divide by 3
    - Output a string representation of the associated grade (refer to the
      provdided table to find the grade)


=end

def get_grade(arg1, arg2, arg3)
  avg = (arg1 + arg2 + arg3) / 3

  if avg >= 90 && avg <= 100
    'A'
  elsif avg >= 80 && avg < 90
    'B'
  elsif avg >= 70 && avg < 80
    'C'
  elsif avg >= 60 && avg < 70
    'D'
  elsif avg >= 0 && avg < 60
    'F'
  end
end


p get_grade(95, 90, 93) == "A"
p get_grade(50, 50, 95) == "D"