# Description:
# Your task is to write a function which returns the sum of following series
# upto nth term(parameter).

# Series: 1 + 1/4 + 1/7 + 1/10 + 1/13 + 1/16 +...

# Rules:

#     You need to round the answer to 2 decimal places and return it as String.

#     If the given value is 0 then it should return 0.00

#     You will only be given Natural Numbers as arguments.

# Examples:(Input --> Output)

# 1 --> 1 --> "1.00"
# 2 --> 1 + 1/4 --> "1.25"
# 5 --> 1 + 1/4 + 1/7 + 1/10 + 1/13 --> "1.57"

# My code:
def series_sum(n)
  if n >= 1
    # car ici n est >= 1
    sum = (1..n).inject { |sum, i| sum + (1.0/(1.to_f + (3 * (i - 1.0)))) }
    # la somme prend en compte des nombre de 1 à n donc (1..n)
    # on applique la méthode inject de énumérable
    # pour faire la somme de tous les éléments
  else
    sum = n
  end
  '%.2f' % sum
  # Given a real number sum, create its string representation s with 2 decimal digits following the dot.

end


# Best practice:
# def series_sum(n)
#   return "0.00" if n == 0
#   '%.2f' % (0..n-1).to_a.map { | x | (1.0/(x*3+1))}.reduce(:+)
# end

# Other practice:
# def series_sum(n)
#   denominator = 1
#   total = 0
#   n.times do
#     total += (1.0/denominator)
#     denominator += 3
#   end
#   "#{format("%.2f", total)}"
# end
