import UIKit

func staircase(n: Int) -> Void {
    // Write your code here
    for i in stride(from: n, through:1, by: -1) {
        var str = ""
        for j in 1...n {
            if i <= j {
                str += "#"
            } else {
                str += " "
            }
        }
        print(str)
    }
}

staircase(n: 4)
