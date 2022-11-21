# Description:

# Clock shows h hours, m minutes and s seconds after midnight.

# Your task is to write a function which returns the time since midnight
# in milliseconds.

# Example:
# h = 0
# m = 1
# s = 1

# result = 61000
# Input constraints:

# 0 <= h <= 23
# 0 <= m <= 59
# 0 <= s <= 59

# My code:
def past(h, m, s)
  # Good Luck!
  # 1h = 60 min = 3600 s = 3 600 000 ms
  # 1m = 60 s = 60 000 ms
  # 1s = 1000 ms
  (h * 3600000) + (m * 60000) + (s * 1000)
end

#Best practice:
# def past(h, m, s)
#   (h * 3600 + m * 60 + s) * 1000
# end
