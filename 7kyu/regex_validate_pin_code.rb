# Description:

# ATM machines allow 4 or 6 digit PIN codes
# and PIN codes cannot contain anything but exactly 4 digits or exactly 6 digits.

# If the function is passed a valid PIN string, return true, else return false.
# Examples (Input --> Output)

# "1234"   -->  true
# "12345"  -->  false
# "a234"   -->  false
def validate_pin(pin)
  #return true or false
  # le pin ne doit contenir
  # que des digits
  # les digits ne peuvent être que
  # au nombre de 4
  # OU au nombre de 6
  pin.match?(/^\d{4}$|^\d{6}$/).to_s ? true : false
end
