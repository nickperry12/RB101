def perfect_square?(num)
  Math.sqrt(num) % 1 == 0
end

def lights(int)
  lights_on = []
  lights_off = []
  (1..int).each do |num|
    if perfect_square?(num)
      lights_on << num
    else
      lights_off << num
    end
  end

  output_message(lights_on, lights_off)
  lights_on
end

def output_message(lights_on, lights_off) 
  msg =
  "Lights #{lights_off[0..-2].join(', ')} and #{lights_off[-1]} are now off; " +
  "#{lights_on[0..-2].join(', ')} and #{lights_on[-1]} are on."
  puts msg
end

p lights(5) == [1, 4]
p lights(10) == [1, 4, 9]
p lights(1000) == [1, 4, 9, 16, 25, 36, 49, 64, 81, 100, 121, 144, 169, 196, 225, 256, 289, 324, 361, 400, 441, 484, 529, 576, 625, 676, 729, 784, 841, 900, 961]
p lights(8000)
p lights(20000)
p lights(50000)