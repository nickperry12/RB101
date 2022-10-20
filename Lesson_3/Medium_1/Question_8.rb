def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

puts rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")

# we must evaluate the arguements rps("rock, paper") and rps("rock", "scissors")
# individually, take the results and pass those as arguments into the rps method
# again, and take the result of that, and use that value as the first argument
# for the final rps method execution. The result of rps("rock", "paper")
# will be "paper", and the result of rps("rock", "scissors") will be "rock". Then
# those are passed into rps once again - rps("paper", "rock") which will return
# "paper". The last expression will be rps("paper", "rock"), which will finally 
# give us paper.