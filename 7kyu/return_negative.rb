# Description:

# In this simple assignment you are given a number and have to make it negative.
# But maybe the number is already negative?

# Examples
# makeNegative(1);  # return -1
# makeNegative(-5); # return -5
# makeNegative(0);  # return 0
# Notes
# The number can be negative already, in which case no change is required.
# Zero (0) is not checked for any specific sign.
# Negative zeros make no mathematical sense.

# My code:
def make_negative(num)
  #   Enter Code Here
    if num == 0
      # si num égale 0 alors rencoie 0
      0
    elsif num > 0
      # si num est positif renvoie -num
      -num
    else
      #si num est négatif renvoie juste num
      num
    end
  end

  # Best practice:

  def makeNegative(num)
    # la méthode abs transforme les num négatifs en positifs
    # donc ici on rajoute un moins devant le num comme ça:
    # -num.abs=> --3.abs => -3
    # num.abs=> -3.abs =>3
    -num.abs
  end
