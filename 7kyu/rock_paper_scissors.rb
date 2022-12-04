# Description:
# Let's play! You have to return which player won! In case of a draw return Draw!.

# Examples(Input1, Input2 --> Output):

# "scissors", "paper" --> "Player 1 won!"
# "scissors", "rock" --> "Player 2 won!"
# "paper", "paper" --> "Draw!"

# My code:
def rps(p1, p2)
  #your code here
  #scissors est plus fort que paper et
  #scissors est moins fort que rock
  #paper est plus fort que rock et
  #paper est moins fort que scissors
  #rock est plus fort que scissors et
  #rock est moins fort que paper
  if p1 == 'scissors' && p2 == 'paper'
    return "Player 1 won!"
  elsif p1 == 'scissors' && p2 == 'rock'
    return "Player 2 won!"
  elsif p1 == 'paper' && p2 == 'rock'
    return "Player 1 won!"
  elsif p1 == 'paper' && p2 == 'scissors'
    return "Player 2 won!"
  elsif p1 == 'rock' && p2 == 'scissors'
    return "Player 1 won!"
  elsif p1 == 'rock' && p2 == 'paper'
    return "Player 2 won!"
  else
    return "Draw!"
  end
end

# Other solution:

def rps(p1, p2)
  return 'Player 1 won!' if p1 == 'scissors' && p2 == 'paper'
  return 'Player 1 won!' if p1 == 'paper' && p2 == 'rock'
  return 'Player 1 won!' if p1 == 'rock' && p2 == 'scissors'
  return 'Draw!' if p1 == p2
  'Player 2 won!'
end

# Best practice:
def rps(p1, p2)
  beatmap = { 'scissors' => 'paper', 'paper' => 'rock', 'rock' => 'scissors' }

  if p1 == p2
    "Draw!"
  elsif beatmap[p1] == p2
    "Player 1 won!"
  else
    "Player 2 won!"
  end
end
