import UIKit

func miniMaxSum(arr: [Int]) -> Void {
    var sortedArray = arr;
    sortedArray.sort{ $0 < $1 }
    var min = 0
    var max = 0
    var index = 0
    for item in sortedArray {
        if (index > 0) {
            max += item
        }
        if (index < sortedArray.endIndex - 1) {
            min += item
        }
        index += 1
    }
    print(min, max)
}

miniMaxSum(arr: [1,2,3,4,5])
