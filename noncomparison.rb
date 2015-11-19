def count_keys_equal(array, array_length, highest_value)
  equal = []
  highest_value.times { equal.push(0) }
  for i in (0..(array_length - 1))
    key = array[i]
    equal[key] += 1
  end
  return equal
end
# Build an array where each index corresponds to a value in the original array
# and each value is the number of times that value occurs in the
# original array

def count_keys_less(equal, highest_value)
  less = []
  less[0] = 0
  for j in (1..(highest_value - 1))
    less[j] = (less[j - 1] + equal[j - 1])
  end
  return less
end
# Build another array where each index corresponds to a value in the original
# array and each value is the number of values less than that value in the
# original array. The operation in the loop adds all values less than the
# previous value (since the indices represent the numbers in order) to the number
# of times the previous value appears

def rearrange(array, less, array_length, highest_value)
  sorted = []
  for i in (0..(array_length - 1))
    key = array[i]
    index = less[key]
    sorted[index] = array[i]
    less[key] += 1
  end
  return sorted
end
# Use the position of each element in 'less' to decide on the final index of the
# element. The final index of the element is the value in 'less' at the index
# equal to the value of the current element. This works because 'less' maintains
# the number of previous slots that should be set aside for smaller elements. Finally,
# the value in less at the index equal to the original array element in incremented,
# so that if there are any later elements with equivalent sort keys they will be
# placed in the next slot over rather than overwriting each other.

def counting_sort(array, array_length, highest_value)
  equal = count_keys_equal(array, array_length, highest_value)
  less = count_keys_less(equal, highest_value)
  sorted = rearrange(array, less, array_length, highest_value)
  return sorted
end

# Combine all of these procedures to sort the array

array = [4, 0, 6, 7, 2, 1, 4, 8, 6, 6, 1, 8, 2, 7, 2]
puts counting_sort(array, array.length, 9)
