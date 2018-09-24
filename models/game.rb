class Game

def initialize(play1, play2)
  @play1 = play1
  @play2 = play2
end

def winner
  if @play1 == "rock" && @play2 == "scissors"
    return "Rock wins!"
  elsif @play1 == "rock" && @play2 == "paper"
    return "Paper wins!"
  elsif @play1 == "paper" && @play2 == "scissors"
    return "Scissors win!"
  elsif @play1 == "paper" && @play2 == "rock"
    return "Paper wins!"
  elsif @play1 == "scissors" && @play2 == "rock"
    return "Rock wins!"
  elsif @play1 == "scissors" && @play2 == "paper"
    return "Scissors win!"
  else
    return "DRAW!!"
  end
end


#this is the end
end
