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
    while j >= 0 && array[j] > key # descend through previous elements as long as they are larger
      array[j + 1] = array[j]
      j -= 1
    end
    array[j + 1] = key
  end
  return array
end

def merge_sort(array, low, high)
  return array if low >= high
  middle = (low + high) / 2
  merge_sort(array, low, middle)
  merge_sort(array, middle + 1, high)
  merge(array, low, middle, high)
end

def merge(array, low, middle, high)
  lower_half = array[low..middle]
  upper_half = array[(middle + 1)..high]
  upper_half.push("ZZZZZ")
  lower_half.push("ZZZZZ")
  i = 0
  j = 0
  for k in (low..high)
    if lower_half[i] <= upper_half[j]
      array[k] = lower_half[i]
      i += 1
    else
      array[k] = upper_half[j]
      j += 1
    end
  end
  return array
end

def quicksort(array, low, high)
  return array if low >= high
  middle = partition(array, low, high)
  quicksort(array, low, middle - 1)
  quicksort(array, middle + 1, high)
end

def partition(array, low, high)
  q = low
  for u in (low..(high - 1))
    if array[u] <= array[high]
      array[q], array[u] = array[u], array[q]
      q += 1
    end
  end
  array[q], array[high] = array[high], array[q]
  return q
end

def randomized_quicksort(array, low, high)
  return array if low >= high
  random_index = rand(low..high)
  array[high], array[random_index] = array[random_index], array[high]
  middle = partition(array, low, high)
  quicksort(array, low, middle - 1)
  quicksort(array, middle + 1, high)
end

def median_randomized_quicksort(array, low, high)
  return array if low >= high
  randoms = []
  3.times do
    random = rand(low..high)
    randoms << random
  end
  random_index = randoms.reduce(:+).to_f / randoms.size
  array[high], array[random_index] = array[random_index], array[high]
  middle = partition(array, low, high)
  quicksort(array, low, middle - 1)
  quicksort(array, middle + 1, high)
end
