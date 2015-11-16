def selection_sort(array, element_count)
  for i in (0..(element_count - 1))
    index_of_minimum = i
    for j in ((i + 1)..(element_count - 1))
      if array[j] < array[index_of_minimum]
        index_of_minimum = j
      end
    end
    array[i], array[index_of_minimum] = array[index_of_minimum], array[i]
  end
  return array
end

def insertion_sort(array, element_count)
  for i in (1..(element_count - 1))
    key = array[i]
    j = i - 1
    while j >= 0 && array[j] > key
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = key
  end
  return array
end
