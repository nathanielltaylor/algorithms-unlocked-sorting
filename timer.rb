require 'benchmark'
require_relative 'sort'

Benchmark.bm(30) do |x|
  names = IO.read('names.txt').split(',')
  x.report("Selection Sort:") { selection_sort(names, names.length) }
  names = IO.read('names.txt').split(',')
  x.report("Insertion Sort:") { insertion_sort(names, names.length) }
  names = IO.read('names.txt').split(',')
  x.report("Merge Sort:") { merge_sort(names, 0, (names.length - 1)) }
end
