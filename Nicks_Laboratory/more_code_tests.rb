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

(0...words.size).step(2) do |i|
  result << words[i]
end