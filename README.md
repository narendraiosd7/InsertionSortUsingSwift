# Insertion Sort in Swift

## Overview
Insertion Sort is a simple, stable, in-place sorting algorithm that builds a sorted array one element at a time. It is efficient for small or nearly sorted datasets.

- **Time Complexity**:
  - Best: O(n) (already sorted)
  - Average/Worst: O(n²)
- **Space Complexity**: O(1)
- **Stable**: Yes

## Algorithm
1. Start with the first element as the sorted portion.
2. For each element in the unsorted portion:
   - Store the current element as `key`.
   - Shift elements in the sorted portion that are greater than `key` one position to the right.
   - Insert `key` into its correct position.
3. Repeat until the array is fully sorted.

## Swift Implementation
Below is a generic Insertion Sort implementation in Swift, without using built-in sorting methods.

```swift
func insertionSort<T: Comparable>(_ array: inout [T]) {
    for i in 1..<array.count {
        let key = array[i]
        var j = i - 1
        while j >= 0 && array[j] > key {
            array[j + 1] = array[j]
            j -= 1
        }
        array[j + 1] = key
    }
}
```

## Example Usage
```swift
var numbers = [5, 2, 4, 6, 1, 3]
insertionSort(&numbers)
print(numbers) // Output: [1, 2, 3, 4, 5, 6]

var strings = ["banana", "apple", "cherry"]
insertionSort(&strings)
print(strings) // Output: ["apple", "banana", "cherry"]
```

## How It Works
For array `[5, 2, 4]`:
1. Start: `[5, 2, 4]` (sorted: `[5]`, unsorted: `[2, 4]`)
2. Insert 2: Shift 5 right, insert 2 → `[2, 5, 4]`
3. Insert 4: Shift 5 right, insert 4 → `[2, 4, 5]`
4. Result: `[2, 4, 5]`

## Advantages
- Simple and easy to implement.
- Efficient for small or nearly sorted arrays.
- In-place and stable.

## Disadvantages
- Inefficient for large datasets (O(n²)).
- Not suitable for frequent sorting of large arrays.
