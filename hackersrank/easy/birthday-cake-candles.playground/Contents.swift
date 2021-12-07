import UIKit

func birthdayCakeCandles(candles: [Int]) -> Int {
    let max: Int! = candles.max();
    var count = 0;
    // Write your code here
    candles.forEach{(item: Int) in
        if (max == item) {
            count += 1
        }
    }
    return count
}

birthdayCakeCandles(candles: [3, 2, 1, 3])
