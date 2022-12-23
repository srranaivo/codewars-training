# Description:
# You are going to be given a word.
# Your job is to return the middle character of the word.
# If the word's length is odd, return the middle character.
# If the word's length is even, return the middle 2 characters.

# #Examples:

# Kata.getMiddle("test") should return "es"

# Kata.getMiddle("testing") should return "t"

# Kata.getMiddle("middle") should return "dd"

# Kata.getMiddle("A") should return "A"

# #Input

# A word (string) of length 0 < str < 1000
# (In javascript you may get slightly more than 1000 in some test cases
#   due to an error in the test cases).
#   You do not need to test for this.
#     This is only here to tell you that you
#     do not need to worry about your solution timing out.

# #Output

# The middle character(s) of the word represented as a string.

# My code:
def get_middle(s)
  #your code here
  # il faut connaitre le nombre de caractère de s
  #num_s = s.length
  # si num_s est pair
  # on retourne les 2 lettres du milieu
  # si num_s est impair
  # on retourne la lettre du milieu
  #num_s.even? ? s[s.length/2-1] + s[s.length/2] : return s[s.length/2]
  if s.length.even?
    return s[s.length/2-1] + s[s.length/2]
  else
    return s[s.length/2]
  end
end

# Others solutions:
def get_middle(s)
  s[(s.size-1)/2..s.size/2]
end

def get_middle(s)
  mid = (s.length - 1) / 2
  s.length.odd? ? s[mid] : s[mid..mid+1]
end

def get_middle(s)
  length = s.length
  middle = length/2
  length.even? ? s[middle-1..middle] : s[middle]
end
