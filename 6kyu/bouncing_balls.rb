# Description:
# A child is playing with a ball on the nth floor of a tall building.
# The height of this floor above ground level, h, is known.

# He drops the ball out of the window. The ball bounces (for example),
# to two-thirds of its height (a bounce of 0.66).

# His mother looks out of a window 1.5 meters from the ground.

# How many times will the mother see the ball pass in front of her window
# (including when it's falling and bouncing?)
# Three conditions must be met for a valid experiment:

#     Float parameter "h" in meters must be greater than 0
#     Float parameter "bounce" must be greater than 0 and less than 1
#     Float parameter "window" must be less than h.

# If all three conditions above are fulfilled, return a positive integer,
# otherwise return -1.
# Note:

# The ball can only be seen if the height of the rebounding ball is
# strictly greater than the window parameter.
# Examples:

# - h = 3, bounce = 0.66, window = 1.5, result is 3

# My code:
def bouncingBall(h, bounce, window)
  # your code
  # si les conditions ne sont pas remplies
  # le code renvoie -1
  return -1 if (h <= 0) || ( bounce <= 0) || (bounce >= 1) || (window >= h)
  # si les 3 conditions sont remplies
  # le code doit renvoyer le nombre de fois que la mère
  # voit descendre et
  # remonter le ballon
  bounce_heights = [h]
  while bounce_heights.last > window
    bounce_heights << bounce_heights.last * bounce
  end
  (bounce_heights.size-1) * 2 - 1
end

# Best pratice:
def bouncingBall(h, bounce, window)
  bounce < 0 || bounce >= 1 || h <= window || window < 0 ? -1 : bouncingBall(h * bounce, bounce, window) + 2
end

# Other solutions:

def bouncingBall(h, bounce, window)
  if h <= 0 || bounce < 0 || bounce >= 1 || window >= h
    -1
  elsif h * bounce <= window
    1
  else
    return 2 + bouncingBall(h * bounce, bounce, window)
  end
end

def bouncingBall(h, bounce, window)
  return -1 unless h > 0 && h > window && bounce > 0 && bounce < 1
  count = 1
  h *= bounce
  while h > window
    count += 2
    h *= bounce
  end
  count
end
