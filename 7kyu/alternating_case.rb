# Description:

# Define String.prototype.toAlternatingCase
# (or a similar function/
# method such as to_alternating_case/
# toAlternatingCase/
# ToAlternatingCase in your selected language;
# see the initial solution for details)
# such that each lowercase letter becomes uppercase
# and each uppercase letter becomes lowercase. For example:

# As usual, your function/method should be pure,
# i.e. it should not mutate the original string.

# My code:
class String
  def to_alternating_case
    #your code here
    #on utilise la méthode swapcase
    swapcase
  end
end

# Best practice:
# class String
#   def to_alternating_case
#     self.swapcase
#   end
# end

# Others codes:

# class String
#   alias :to_alternating_case :swapcase
# end

# class String
#   def to_alternating_case
#     tr("a-zA-Z", "A-Za-z")
#   end
# end

# class String
#   def to_alternating_case
#       self.split("").map{|e| e == e.upcase ? e.downcase : e.upcase}.join
#   end
# end

# class String
#   def to_alternating_case
#     self.chars.map{|x| ("a".."z").include?(x) ? x.upcase : x.downcase }.join
#   end
# end

# class String
#   def to_alternating_case
#     chars.map { |i| i.upcase == i ? i.downcase : i.upcase }.join
#   end
# end

# class String
#   def to_alternating_case
#     self.chars.map do |char|
#       if char.downcase == char.upcase
#         char
#       elsif char.downcase == char
#         char.upcase
#       else
#         char.downcase
#       end
#     end.join
#   end
# end
