require 'benchmark'
require_relative 'sort'

names = IO.read('names.txt').split(',')

Benchmark.bm(30) do |x|
  x.report("Selection Sort:") { selection_sort(names, names.length) }
  x.report("Insertion Sort:") { insertion_sort(names, names.length) }
end
