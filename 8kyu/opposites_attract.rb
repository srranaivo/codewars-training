# Description:
# Timmy & Sarah think they are in love, but around where they live,
# they will only know once they pick a flower each.
# If one of the flowers has an even number of petals and
# the other has an odd number of petals it means they are in love.

# Write a function that will take the number of petals of each flower
# and return true if they are in love and false if they aren't.


# My solution:

def lovefunc( flower1, flower2 )
  # your solution here
  # prendre 2 fleurs
  # chacunes des fleurs a un nombre de pétales
  # nombre de pétales soit pair soit impair
  # si petales fleur_1 == pair && petales fleur_2 == impair
  # ou petales fleur_1 == impair && ales fleur_2 == pair
  # alors true
  # else false
  if (flower1.even? && flower2.odd?) || (flower1.odd? && flower2.even?)
    return true
  else
    return false
  end
end



# Best practice:
# def lovefunc( flower1, flower2 )
#   (flower1 + flower2).odd?
# end
