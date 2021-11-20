import UIKit

func solution(_ arr:[Int]) -> Double {
    return Double(arr.reduce(0){(acc, cu) in acc + cu}) / Double(arr.count)
}

print(solution([1, 2, 3, 4]))
