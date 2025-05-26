def rps(fist1, fist2)
  if fist1 == "rock"
    (fist2 == "paper") ? "paper" : "rock"
  elsif fist1 == "paper"
    (fist2 == "scissors") ? "scissors" : "paper"
  else
    (fist2 == "rock") ? "rock" : "scissors"
  end
end

# Here is how the expressions will be evaluated:
# rps(rps(rps("rock", "paper"), rps("rock", "scissors")), "rock")
# rps(rps("paper", "rock"), "rock")
# rps("paper", "rock")
# "paper"