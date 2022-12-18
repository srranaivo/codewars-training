# Description:
# Messi goals function

# Messi is a soccer player with goals in three leagues:

#     LaLiga
#     Copa del Rey
#     Champions

# Complete the function to return his total number of goals in all three leagues.

# Note: the input will always be valid.

# For example:

# 5, 10, 2  -->  17

# My code:
def goals (laLigaGoals, copaDelReyGoals, championsLeagueGoals)
  # code goes here
  all_goals = laLigaGoals + copaDelReyGoals + championsLeagueGoals
end

# Best practice:
# def goals(*goals)
#   goals.sum
# end
