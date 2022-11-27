# Description:
# In a small town the population is p0 = 1000 at the beginning of a year.
# The population regularly increases by 2 percent per year
# and moreover 50 new inhabitants per year come to live in the town.
# How many years does the town need to see its population greater
# or equal to p = 1200 inhabitants?

# At the end of the first year there will be:
# 1000 + 1000 * 0.02 + 50 => 1070 inhabitants

# At the end of the 2nd year there will be:
# 1070 + 1070 * 0.02 + 50 => 1141 inhabitants
# (** number of inhabitants is an integer **)

# At the end of the 3rd year there will be:
# 1141 + 1141 * 0.02 + 50 => 1213

# It will need 3 entire years.

# More generally given parameters:

# p0, percent, aug (inhabitants coming or leaving each year),
# p (population to equal or surpass)

# the function nb_year should return n number of entire years needed to get
# a population greater or equal to p.

# aug is an integer, percent a positive or null floating number,
# p0 and p are positive integers (> 0)

# Examples:
# nb_year(1500, 5, 100, 5000) -> 15
# nb_year(1500000, 2.5, 10000, 2000000) -> 10

# Note:

# Don't forget to convert the percent parameter as a percentage
# in the body of your function:
# if the parameter percent is 2 you have to convert it to 0.02.

# Best practice:
def nb_year(p0, percent, aug, p)
  # your code
  n = 0
  percent = percent * 0.01

  while p0 < p
    p0 += (p0 * percent).to_i + aug
    n += 1
  end

  return n
end

# Other code:
# def nb_year(p0, percent, aug, p)
#   # your code
# #years = 0
# #until p0 >= p
# #p0 += p0 * (percent / 100) + aug
# #end
# #return years
# years = 0
# target_pop = p0

# until target_pop >= p
#   target_pop = percent_increase(target_pop, percent) + ni_increase(target_pop, aug)
#   years +=1
# end
# return years
# end

# def percent_increase(starting_pop, percentage)
# (starting_pop * percentage / 100).floor
# end

# def ni_increase(starting_pop, ni_count)
# starting_pop + ni_count
# end
