# Description:
# Write a function named setAlarm which receives two parameters.
# The first parameter, employed, is true whenever you are employed and
# the second parameter, vacation is true whenever you are on vacation.

# The function should return true if
# you are employed
# and not on vacation
# (because these are the circumstances under which you need to set an alarm).
# It should return false otherwise. Examples:

# setAlarm(true, true) -> false
# setAlarm(false, true) -> false
# setAlarm(false, false) -> false
# setAlarm(true, false) -> true

# My code:
def set_alarm(employed, vacation)
  # Your code here
  # le reveil sonne = true si employed = true et vacation = false
  # si employed = true ET vacation = true => false
  # si employed = false ET vacation = true => false
  if (employed == true) && (vacation == false)
    true
  elsif (employed == false) && (vacation == true)
    false
  elsif (employed == false) && (vacation == false)
    false
  elsif (employed == true) && (vacation == true)
    false
  end
end

# Best practice:
# def set_alarm(employed, vacation)
#   employed && !vacation
# end
