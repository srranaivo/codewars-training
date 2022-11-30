# Description:
# Write a program that finds the summation of every number from 1 to num.
# The number will always be a positive integer greater than 0.

# For example:

# summation(2) -> 3
# 1 + 2

# summation(8) -> 36
# 1 + 2 + 3 + 4 + 5 + 6 + 7 + 8

# My code:
def summation(num)
  # code here
  # utilisation de la méthode injecz de enumerable
  # avec en argument le + pour ajouter les num
  (1..num).inject(:+)
end

# Best practice 1:
# def summation(num)
# 	(1..num).reduce(:+)
# end

# Best practice 2:
# def summation(num)
#   (1..num).sum
# end
