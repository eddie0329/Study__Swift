import UIKit

func simpleArraySum(ar: [Int]) -> Int {
    return ar.reduce(0){
        (result: Int, current: Int) -> Int in
        return result + current
    }

}

simpleArraySum(ar: [1, 2, 3, 4, 10, 11])
