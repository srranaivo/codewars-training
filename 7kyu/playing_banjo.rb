# Description:
# Create a function which answers the question "Are you playing banjo?".
# If your name starts with the letter "R" or lower case "r",
# you are playing banjo!

# The function takes a name as its only argument,
# and returns one of the following strings:

# name + " plays banjo"
# name + " does not play banjo"
# Names given are always valid strings.

# My code:
def are_you_playing_banjo(name)
  # Implement me!
  #test-expression ? if-true-expression : if-false-expression
  name.start_with?("R", "r") ? name + " plays banjo" : name + " does not play banjo"
  #return name
end

# Best practice:
# def are_you_playing_banjo(name)
#   name[0].downcase == "r" ? "#{name} plays banjo" : "#{name} does not play banjo"
# end

# Second best practice:
# def are_you_playing_banjo(name)
#   name.start_with?("r","R") ? "#{name} plays banjo" : "#{name} does not play banjo"
# end
