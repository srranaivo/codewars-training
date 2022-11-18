# Description:
# Trolls are attacking your comment section!

# A common way to deal with this situation is to remove all of the vowels from
# the trolls' comments, neutralizing the threat.

# Your task is to write a function that takes a string and
# return a new string with all vowels removed.

# For example, the string "This website is for losers LOL!" would become
# "Ths wbst s fr lsrs LL!".

# Note: for this kata y isn't considered a vowel.

# My code:
def disemvowel(str)
  #str.gsub([a, o, i, u], "")
  # utilisation des regex avec le /i pour le case insensitive
  str.gsub(/[aeiou]/i, '')
end

# Best practice:
# def disemvowel(str)
#   str.delete('aeiouAEIOU')
# end
