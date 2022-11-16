# Description:
# Complete the function that accepts a string parameter,
# and reverses each word in the string.
# All spaces in the string should be retained.

# Examples
# "This is an example!" ==> "sihT si na !elpmaxe"
# "double  spaces"      ==> "elbuod  secaps"


# My code:
def reverse_words(str)
  # Go for it
  # on transforme la string en array
  # on sépare chaque mot en string dans l'array
  # on obtient [["", "le", " "], ["", "chien", " "]]
  array = str.scan(/(\s*)(\S+)(\s*)/)
  # on doit obtenir un nouvel array en conservant les espaces
  array_bis = array.map { |spacer1, word, spacer2| spacer1 + word.reverse + spacer2 }
  # on fdoit retransformer l'array_bis en string:
  array_bis.join
end

# Best practice:

# def reverse_words(str)
# on utilise la regex pour prendre chaque mot
# qui compose toute la string
# puis on reverse chaque mot
#   str.gsub(/\S+/, &:reverse)
# end
