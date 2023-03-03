=begin
---------------- Problem

6 kyu

Write a function

triple_double(num1, num2)

which takes numbers num1 and num2 and returns 1 if there is a straight triple of
a number at any place in num1 and also a straight double of the same number in
num2. If this isn't the case, return 0

Restate the problem:

Create a method that accepts two arguments `num1` and `num2` and returns either
1 if `num1` contains 3 consecutive numbers of the same number, and `num2` has
2 conseuctive numbers of that same number, and returns 0 if not.


Input: Integer

Output: Integer (1 or 0)




Explicit Rules:
- must be 3 consecutive numbers that are the same in `num1` and 2 straight of
  that same number in `num2`



Implicit Rules:
- none identified


Modelling:

I: 451999277, 41177722899
O: 1

451(999)277, 411777228(99)

=> 1



---------------- Examples

p triple_double(451999277, 41177722899) == 1
# num1 has straight triple 999s and num2 has straight double 99s
p triple_double(1222345, 12345) == 0
# num1 has straight triple 2s but num2 has only a single 2

---------------- Data Structures





---------------- Scratchboard






---------------- Algorithm

/* given two integers `num1` and `num2` */

Initialize `triples` 
  - Split `num1` into an array of digits and sort so it has the same order of
    digits as `num1`
    - Create subarrays, group numbers if they are consecutively the same
  - Select all the subarrays that have a size of 3 and assign to `triples`

Repeat these steps for `doubles`
  - Select subarrays that are a size of 2

Iterate through `triples`
  - If any of the subarrays in `doubles` include a number from one of the
    subarrays in `triples`
    - Initialize `triple` to that subarray

Do the same for `doubles`

Return 1 if an array has been assigned to `triples` and `doubles`
  - Return 0 if not

=end

def find_triples(arr)
  arr = arr.slice_when { |i, ii| i != ii }.to_a
  arr.select! { |subarr| subarr.size >= 3 }
end

def find_doubles(arr)
  arr = arr.slice_when { |i, ii| i != ii }.to_a
  arr.select! { |subarr| subarr.size >= 2 }
end

def triple_double(num1, num2)
  triples = find_triples(num1.digits.reverse)
  doubles = find_doubles(num2.digits.reverse)

  triple = triples.select { |subarr| doubles.any? { |sub| sub.include?(subarr[0]) } }
  double = doubles.select { |subarr| triples.any? { |sub| sub.include?(subarr[0]) } }

  !triple.empty? && !double.empty? ? 1 : 0
end

p triple_double(451999277, 41177722899) == 1
p triple_double(1222345, 12345) == 0