# Description:
# Given an array of integers, return a new array with each value doubled.

# For example:

# [1, 2, 3] --> [2, 4, 6]

# My code:
def maps(x)
  # code here
  # x is an array
  # use map method to obtain an other array
  x.map {|a| 2*a}
end

# Best practice:
# def maps(x) x.map {|n| n * 2 } end
