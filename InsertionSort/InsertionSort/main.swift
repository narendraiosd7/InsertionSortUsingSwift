import Foundation

func insertionSort(_ nums: inout [Int]) {
  
  for i in 1..<nums.count {
    var j = i - 1
    let num = nums[i]
    
    while j >= 0 && nums[j] > num {
      nums[j+1] = nums[j]
      j -= 1
    }
    
    nums[j+1] = num
  }
}

var numbers = [5, 2, 4, 6, 1, 3]
insertionSort(&numbers)
print(numbers) // Output: [1, 2, 3, 4, 5, 6]

