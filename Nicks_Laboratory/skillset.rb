# creating pairs of elements from a given array
arr = [1, 2, 3, 4, 5, 6, 7, 8]
result = []

(0...arr.size).each do |i|
  (i+1...arr.size).each do |ii|
    result << [arr[i], arr[ii]]
  end
end

# creating substrings and adding to an array
str = 'hello there happy studies'
substrings = []

(0...str.size).each do |i|
  (i+1...str.size).each do |ii|
    substrings << str[i..ii]
  end
end

# can add the step method if we want to only modify elements at certain indices
# for example, if we wanted to grab every second index

string = "we only want every other word"
words = string.split
result = []

(1...words.size).step(2) do |i|
  result << words[i]
end

# Problem 1

# Order the elements of an existing array in reverse in a new array

array = [1, 2, 3, 4]
reversed_array = []

array.each { |num| reversed_array.unshift(num) }

p reversed_array

# Reverse the order of elements in an existing array

array = [1, 2, 3, 4]
length = array.size

for i in 0...(length/2)
  temp = array[i]
  array[i] = array[length-1-i]
  array[length-1-i] = temp
end

p array

# Problem 2

# Return all sub-strings

def substrings(arr)
  arr.chars.each_with_object([]).with_index do |(_, acc_arr), index| 
    1.upto(arr.length - index) do |length|
      acc_arr << arr[index, length]
    end
  end
end

p substrings('abcde') == [
  'a', 'ab', 'abc', 'abcd', 'abcde',
  'b', 'bc', 'bcd', 'bcde',
  'c', 'cd', 'cde',
  'd', 'de',
  'e'
]

# Problem 3

# How to check if a number is a number in the fibonacci sequence?

# f(n) = f(n - 2) + f(n - 1)

def fibonacci?(number)
  first = 1
  last = 1

  loop do
    fibonacci = first + last
    first = last
    last = fibonacci

    return true if fibonacci == number
    return false if fibonacci > number
  end
end

p fibonacci?(40)
p fibonacci?(5)
p fibonacci?(13)


Using scan to find strings in strings
#scan returns an array of each time the string occured in the substring.

"I'm drinking and eating and being dreaming".scan(/ing/)
# => ["ing", "ing", "ing", "ing"]

# if you use .length, you can see how many times it occured in the string.
["ing", "ing", "ing", "ing"].length
# => 4



Scan & Regex with +

# Return an array of vowel strings, including any consecutive

"codewarriors".scan(/[aeiou]+/) #=> ["o", "e", "a", "io"]
"suoidea".scan(/[aeiou]+/)      #=> ["uoi", "ea"]

"suoidea".scan(/[aeiou]+/).map(&:size).max #=> 3    # longest vowel chain in word

EXAMPLE - Digits

music = %w(21.mp3 10.mp3 5.mp3 40.mp3)
music.sort_by { |s| s.scan(/\d+/).first.to_i } 
#=> ["5.mp3", "10.mp3", "21.mp3", "40.mp3"]
# scan returns an array of the digits in each string ["5", "3"], ["10","3"], etc
# and then invokes first method, which returns the first element. Then changes it
# into an integer 



Using Regex

=~ - if a match is found, the operator returns index of first match in 
    string, otherwise it returns nil.

You need to include forward slashes. 

/hay/ =~ 'haystack'   #=> 0
'haystack' =~ /hay/   #=> 0
/a/   =~ 'haystack'   #=> 1
/u/   =~ 'haystack'   #=> nil


array = ['bob', 'joe', 'ann', '2324']
array.select do |ele|
  ele =~ /[\W]/       # will match any non-alphanumeric characters
end
# => ['--']

array.select do |ele|
  ele =~ /\d/         # [0-9] will match any number from 0 to 9
end
# => ["2324"]

array.select do |ele|
  ele =~ /\w/         # same as [0-9a-zA-Z] will match any alphanumeric character
end
# => ['bob', 'joe', 'ann', '2324']