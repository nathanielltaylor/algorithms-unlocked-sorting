require 'benchmark'
require_relative 'comparison'

Benchmark.bm(30) do |x|
  names = IO.read('names.txt').split(',')
  x.report("Selection Sort:") { selection_sort(names, names.length) }

  names = IO.read('names.txt').split(',')
  x.report("Insertion Sort:") { insertion_sort(names, names.length) }

  names = IO.read('names.txt').split(',')
  x.report("Merge Sort:") { merge_sort(names, 0, (names.length - 1)) }

  names = IO.read('names.txt').split(',')
  x.report("Quicksort:") { quicksort(names, 0, (names.length - 1)) }

  names = IO.read('names.txt').split(',')
  x.report("Randomized Quicksort:") { randomized_quicksort(names, 0, (names.length - 1)) }

  names = IO.read('names.txt').split(',')
  x.report("Median Randomized Quicksort:") { median_randomized_quicksort(names, 0, (names.length - 1)) }

  names = IO.read('names.txt').split(',')
  x.report("Hybrid Sort:") { hybrid_sort(names, 0, (names.length - 1)) }
end
