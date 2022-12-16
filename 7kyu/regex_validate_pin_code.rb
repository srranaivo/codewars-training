# Description:

# ATM machines allow 4 or 6 digit PIN codes
# and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits.

# If the function is passed a valid PIN string, return true, else return false.
# Examples (Input --> Output)

# "1234"   -->  true
# "12345"  -->  false
# "a234"   -->  false

##########FAUX##########################################
# def validate_pin(pin)
#   #return true or false
#   # le pin ne doit contenir
#   # que des digits
#   # les digits ne peuvent être que
#   # au nombre de 4
#   # OU au nombre de 6
#   pin.match?(/^\d{4}$|^\d{6}$/).to_s ? true : false
# end

# rgex = /^(\d{4}|\d{6})$/
#   if rgex && (pin.length === 4 || pin.length === 6)
#     return true
#   else
#     return false
#   end

#   /^(\d{4}|\d{6})$/
#######################################################33

# My code:
def validate_pin(pin)
  #return true or false
  # le pin est une string
  # qui ne doit contenir
  # que des digits
  # les digits ne peuvent être que
  # au nombre de 4
  # OU au nombre de 6
#pin.match?(/"[\d]{4}"|"[\d]{6}"/)? ? true : false
#end
  #rgex = /^(?:\d{4}|\d{6})$/
  #if rgex.match(pin)
# return true
  #else
# return false
  #end
  checkLength = pin.length === 4 || pin.length === 6
  numMatch = /^(?:\d{4}|\d{6})$/
  if (checkLength && pin.match(numMatch))
    return true
  else
    return false
  end
end

# Best practice:
def validate_pin(pin)
  pin.match? /\A\d{4}(\d{2})?\z/
end

# Other practice:
def validate_pin(pin)
  (pin.length == 4 || pin.length == 6) && pin.count("0-9") == pin.length
end

def validate_pin(pin)
  /\A(\d{4}|\d{6})\z/ === pin
end
