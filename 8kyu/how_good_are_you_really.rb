# Description:
# There was a test in your class and you passed it. Congratulations!
# But you're an ambitious person. You want to know if
# you're better than the average student in your class.

# You receive an array with your peers' test scores.
# Now calculate the average and compare your score!

# Return True if you're better, else False!

# Note:
# Your points are not included in the array of your class's points.
# For calculating the average point you may add your point to the given array!

# My solution:
def better_than_average(arr, points)
  # Your code here
  # calculer la moyenne de la classe + rajouter ma note
  # méthode inject transmettra chaque élément et les accumulera séquentiellement.
  sum = arr.inject(:+)
  average = sum/(arr.length)
  # comparer la moyenne de la classe à ma note
  # si ma note est supérieure à la moyenne
  if points > average
    return true
  # return true
  else
    return false
  # sinon return false
  end
end

# Best practice:
# def better_than_average(arr, points)
#   arr.inject(:+) / arr.length < points
# end
