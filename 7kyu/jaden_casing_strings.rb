# Description
# Jaden Smith, the son of Will Smith, is the star of films such as
# The Karate Kid (2010) and After Earth (2013). Jaden is also known for
# some of his philosophy that he delivers via Twitter.
# When writing on Twitter, he is known for almost always capitalizing every word.
# For simplicity, you'll have to capitalize each word,
# check out how contractions are expected to be in the example below.

# Your task is to convert strings to how they would be written by Jaden Smith.
# The strings are actual quotes from Jaden Smith,
# but they are not capitalized in the same way he originally typed them.

# Example:

# Not Jaden-Cased: "How can mirrors be real if our eyes aren't real"
# Jaden-Cased:     "How Can Mirrors Be Real If Our Eyes Aren't Real"

# My code:
class String
  def toJadenCase
    # ...
    # on prend une string
    # sur cette string on utilise la méthode .split
    # qui va transformer chaque mot en
    # string à part entière
    # et mettre ses derniers dans un tableau
    # on travaille ainsi dans un tableau de strings
    # sur ce tableau on appelle la methode .map
    # qui va transformer ce tableau en un
    # nouveau tableau
    # on veut que ce nouveau tableau contienne
    # tous les strings en capitalize
    # donc on utilise la méthode capitalize
    # puis on veut à nouveau une string et
    # non pas un tableau donc
    # on utilis ela méthode .join(' ')
    split.map { |i| i.capitalize }.join(' ')
  end
end

# Best practice:
# class String
#   def toJadenCase
#     self.split.map(&:capitalize).join(" ")
#   end
# end
