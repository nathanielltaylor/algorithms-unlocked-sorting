### Sorting

Implementing the various sort algorithms described in Thomas H. Cormen's 'Algorithms Unlocked'. As with my [implementations of search algorithms from this book](https://github.com/nathanielltaylor/algorithms-unlocked-searching), these examples are written to favor clarity and ease of portability to other languages in mind over Ruby best practices and language-specific shortcuts.

- The insertion sort is 2 to 3 times faster than the selection sort
- The merge sort is roughly twice as fast as the insertion sort
- The quicksort is about 30% faster than the merge sort

##### Further Quicksort Optimization
- Implementing the trade off of checking to see whether elements are the same prior to swapping does not cause a noticeable change in performance in either direction
- The non-deterministic quicksort variants do not perform significantly better on this dataset; presumably it has too few elements for the time investment in choosing a random number (or three and averaging them) to pay off
