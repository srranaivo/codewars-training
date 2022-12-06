# Description:
# You might know some pretty large perfect squares. But what about the NEXT one?

# Complete the findNextSquare method that finds the next
# integral perfect square after the one passed as a parameter.
# Recall that an integral perfect square is an integer n
# such that sqrt(n) is also an integer.

# If the parameter is itself not a perfect square
# then -1 should be returned. You may assume the parameter is non-negative.

# Examples:(Input --> Output)

# 121 --> 144
# 625 --> 676
# 114 --> -1 since 114 is not a perfect square

# My code:
def find_next_square(sq)
  # Return the next square if sq is a perfect square, -1 otherwise
  #-1
  #if sq.select { |x| Math.sqrt(x) % 1 == 0 }
    #return sq ** 2
  #else
    #return -1
  #end
  sqrt = Math::sqrt(sq)
  if (sq == sqrt.floor**2)
    (sqrt.floor+1)**2
  else
    -1
  end
end

# Other practice:
def find_next_square(sq)
  # Return the next square if sq is a perfect square, -1 otherwise
  sqrt = Math.sqrt(sq)
  sqrt % 1 == 0 ? (sqrt + 1)**2 : -1
end

# Best practice:
def find_next_square(sq)
  # Return the next square if sq is a perfect square, -1 otherwise
  number = Math.sqrt(sq) + 1
  number % 1 == 0 ? number**2 : -1
end
