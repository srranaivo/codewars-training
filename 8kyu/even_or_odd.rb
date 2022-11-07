# Description
# Create a function that takes an integer as an argument and returns "Even"
# for even numbers or "Odd" for odd numbers.


# My solution:

def even_or_odd(number)
  # boolean condtion to know if a number is even
  if number.even?
  # if condition true return Even
    return "Even"
  # if condition false return Odd
  else
    return "Odd"
  end
end

# Best practice:
# def even_or_odd(number)
#   number.even? ? "Even" : "Odd"
# end
