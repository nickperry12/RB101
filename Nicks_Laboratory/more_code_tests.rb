arr = [1, 20, 3, 4, 1, 6, 9, 11]
sum = []

(0...arr.size).each do |i|
  temp = arr[i...i+5].sum
  sum << temp
end

p sum.min