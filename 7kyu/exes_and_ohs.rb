# Description:
# Check to see if a string has the same amount of 'x's and 'o's.
# The method must return a boolean and be case insensitive.
#   The string can contain any char.

#   Examples input/output:

#   XO("ooxx") => true
#   XO("xooxx") => false
#   XO("ooxXm") => true
#   XO("zpzpzpp") => true // when no 'x' and 'o' is present should return true
#   XO("zzoo") => false

# My code:
def XO(str)
  #your code here
  # on a une chaine de caractères
  # on doit vérifier s'il y a:
  # des x et des o
  # s'il n'y en n'a pas:
  # return true
  # s'il y en a:
  # il faut tout mettre dans la même casse
  # return true si nombre de x == nombre de o
  # return false sinon
  new_string = str.downcase
  c = new_string.count "x"
  v = new_string.count "o"
  if (c == 0) && (v == 0)
    return true
  elsif c == v
    return true
  else
    return false
  end
end

# Best practice:
def XO(str)
  str.downcase.count('x') == str.downcase.count('o')
end

def XO(str)
  str.downcase!
  str.count('o') == str.count('x')
end

def XO(str)
  str.count('Xx') == str.count('oO')
end
