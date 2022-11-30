# Description:
# Sum all the numbers of a given array ( cq. list ), except the highest and
# the lowest element ( by value, not by index! ).

# The highest or lowest element respectively is a single element at each edge,
# even if there are more than one with the same value.

# Mind the input validation.

# Example
# { 6, 2, 1, 8, 10 } => 16
# { 1, 1, 11, 2, 3 } => 6
# Input validation
# If an empty value ( null, None, Nothing etc. ) is given instead of an array,
# or the given array is an empty list or a list with only 1 element, return 0.

# My code:
def sum_array(arr)
  #your code here
  # si arr est vide [] ou
  # si arr est nil ou
  # si arr possède un seul élément
  if arr == [] || arr == nil || arr.length <= 2
    return 0
  else
    arr = arr.sort()
    #lowest = arr.reject { |value| value == arr[0] }
    #highest = arr.reject { |value| value == arr[-1] }
    arr.inject(0){ |sum, x| sum + x } - arr[0] - arr[-1]
  end
end

# Best practice 1:
# def sum_array(arr)
#   if arr.kind_of?(Array) and arr.length > 2
#     arr.inject(:+) - arr.min - arr.max
#   else
#     0
#   end
# end

# Best practice 2:
# def sum_array(arr)
#   arr.nil? || arr.empty? ? 0 : arr.sort[1..-2].reduce(0, :+)
# end
