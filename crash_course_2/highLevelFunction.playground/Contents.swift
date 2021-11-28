import UIKit

// map
let numbers: [Int] = [0, 1, 2, 3]
//let mapArray = numbers.map { (number) -> Int in
//  return number * 2
//}
let mapArray = numbers.map { $0 * 2 }
mapArray // [0, 2, 4, 6]

// filter
let intArray = [10, 4, 5, 20, 13]
let filterArray = intArray.filter { $0 > 5 }
filterArray // [10, 20 ,13]

// reduce

let intArray2 = [1, 2, 3, 4, 5]
let sum = intArray2.reduce(0) { $0 + $1 }

sum // 15

