import UIKit

func kangaroo(x1: Int, v1: Int, x2: Int, v2: Int) -> String {
    if x1 > x2, v1 > v2 {
        return "NO"
    }
    if x2 > x1, v2 > v1 {
        return "NO"
    }
    
    var isPossible = false
    var kangOnePositionAt = x1
    var kangTwoPositionAt = x2
    
    while true {
        if kangOnePositionAt > 10000 || kangTwoPositionAt > 10000 {
            break;
        }
        if kangOnePositionAt == kangTwoPositionAt {
            isPossible = true
            break
        } else {
            kangOnePositionAt += v1
            kangTwoPositionAt += v2
        }
    }
    
    return isPossible ? "YES" : "NO"
}

print(kangaroo(x1: 0, v1: 3, x2: 4, v2: 2))
print(kangaroo(x1: 0, v1: 2, x2: 5, v2: 3))
