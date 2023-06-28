def fizz_buzz(start, end_num)
  (start .. end_num).each do |elem|
    case elem % 3
    when 0 then puts "FizzBuzz"
    when elem % 3 == 0 then puts "Fizz"
    when elem % 5 == 0  then puts "Buzz"
    else puts elem
    end
  end
end

fizz_buzz(1,15)