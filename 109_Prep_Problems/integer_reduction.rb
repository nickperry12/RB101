=begin

https://www.codewars.com/kata/59fd6d2332b8b9955200005f/train/ruby

In this Kata, you will be given two integers n and k and your task is to remove
k-digits from n and return the lowest number possible, without changing the
order of the digits in n. Return the result as a string.

Let's take an example of solve(123056,4). We need to remove 4 digits from 123056
and return the lowest possible number. The best digits to remove are (1,2,3,6)
so that the remaining digits are '05'. Therefore, solve(123056,4) = '05'.

Note also that the order of the numbers in n does not change: solve(1284569,2) =
'12456', because we have removed 8 and 9.

P:

Restate the problem:

Create a method `solve` that takes two arguments, both integers, `n` and `k`.
The method should remove `k` amount of digits from `n`, and return the lowest
possible number while maintaing the original order. 

Input: Integer
Output: String

Explicit Rules:
- returned number should maintain the original order in which they were in
- need to find the smallest number
- must remove `k` amount of digits
- must return a string representation of the number

Implicit Rules:
- do not remove leading zeroes, can me implied from the 3rd and 4th test cases

Examples:

solve(123056,1) == '12056'
solve(123056,2) == '1056'
solve(123056,3) == '056'
solve(123056,4) == '05'
solve(1284569,1) == '124569'
solve(1284569,2) == '12456'
solve(1284569,3) == '1245'
solve(1284569,4) == '124'

D:

- use a loop to iterate
- can use an array to store the numbers we're using in
- think of methods we can use to convert our number into string format

A:

/* given two integers `n` and `k` */
1. convert the number into a string
2. initialize `result` and set to [] 
3. iterate through chars of the number string
4. using a loop, remove the last element from `result` if the following
conditons are met:

`k` is > 0, `result` isn't empty, and the last element in `result` is greater
than the current char on iteration

5. append the current character to `result`
6. once finished iterating, remove the last element from `result` and then
subtract 1 from `k`
7. repeat that while `k` is greater than 0

=end

def solve(n, k)
  string_num = n.to_s
  result = []

  string_num.chars.each do |digit|
    loop do
      if k > 0 && result.length > 0 && result[-1] > digit
        result.delete(result.last)
        k -= 1
      else
        break
      end
    end
    result << digit
  end
  
  loop do
    break if k == 0
    result.delete(result.last)
    k -= 1
  end
  
  result.join
end


def solve(n, k)
  string_nums = n.to_s
  result = []
  string_nums.chars.each do |digit|
      while k > 0 && result.size > 0 && result[-1] > digit
          result.pop
          k -= 1
      end
      result.push(digit)
  end
  while k > 0
      result.pop
      k -= 1
  end
  result.join
end



p solve(123056,1) == '12056'
p solve(123056,2) == '1056'
p solve(123056,3) == '056'
p solve(123056,4) == '05'
p solve(1284569,1) == '124569'
p solve(1284569,2) == '12456'
p solve(1284569,3) == '1245'
p solve(1284569,4) == '124'