import UIKit

func funcA() -> Int {
    var a = 10;
    func funcB() {
        a = a + 10;
    }
    funcB();
    return a;
}

print(funcA());

func makeInc1 () -> ((Int) -> Int) {
    func addOne(number: Int) -> Int {
        return number + 1;
    }
    return addOne;
}

var increment = makeInc1();
print(increment(8));

func makeInc2(amount: Int) -> (()-> Int) {
    var total = 10;
    func addAmount() -> Int {
        total = total + amount
        return total;
    }
    return addAmount;
}

var newInc = makeInc2(amount: 10);
print(newInc());


func hasAnyMatch(list: [Int], condition: ((Int)-> Bool)) -> Bool {
    for item in list {
        if (condition(item)) {
            return true;
        }
    }
    return false;
}

func lessThanTen(number: Int) -> Bool {
    return number < 10;
}

print(hasAnyMatch(list: [10, 11, 20], condition: lessThanTen));
print(hasAnyMatch(list: [10, 11, 9], condition: lessThanTen));
