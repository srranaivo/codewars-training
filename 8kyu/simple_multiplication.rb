# Description:
# This kata is about multiplying a given number
# by eight if it is an even number and by nine otherwise.

# My solution:
def simple_multiplication(number)
  # Your code goes here
  number.even? ? number * 8 : number * 9
end
