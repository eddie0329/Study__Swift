import UIKit

for item in 1...10 where item % 2 == 0 {
//    print("even: \(item)")
}

for i in stride(from: 10, through: 2, by: -2) {
//    print(i);
}

var temp = [1, 2, 3]
//temp.forEach{ print($0) }

func sum(a: Int, b: Int) -> Int {
    print(a + b)
    return a + b
}

sum(a: 1, b: 2)
