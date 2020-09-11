import UIKit

func swapTwoInts(a: inout Int, b: inout Int) {
    let temp = a;
    a = b;
    b = temp;
}

var n1 = 100;
var n2 = 200;
print("n1 = \(n1)");
print("n2 = \(n2)");
swapTwoInts(a: &n1, b: &n2);
print("n1 = \(n1)");
print("n2 = \(n2)");

func swapTwoDouble(a: inout Double, b: inout Double) {
    let temp = a;
    a = b;
    b = temp;
}

var d1 = 1.1;
var d2 = 2.2;
print("d1 = \(d1)");
print("d2 = \(d2)");
swapTwoDouble(a: &d1, b: &d2);
print("d1 = \(d1)");
print("d2 = \(d2)");

func swapTwoString(a: inout String, b: inout String) {
    let temp = a;
    a = b;
    b = temp;
}
var str1 = "A";
var str2 = "B";
print("str1 = \(str1)");
print("str2 = \(str2)");
swapTwoString(a: &str1, b: &str2);
print("str1 = \(str1)");
print("str2 = \(str2)");

func swapTwoValues<T>(a: inout T, b: inout T) {
    let temp = a;
    a = b;
    b = temp;
}
var number1 = 1;
var number2 = 2;
print("number1 = \(number1)");
print("number2 = \(number2)");
swapTwoValues(a: &number1, b: &number2);
print("number1 = \(number1)");
print("number2 = \(number2)");

func repeatInt(item: Int, times: Int) -> [Int] {
    var result = [Int]();
    for _ in 1...times {
        result.append(item);
    }
    return result;
}
print(repeatInt(item: 3, times: 5));
print(repeatInt(item: 4, times: 5));

func repeatValue<ItemType>(item: ItemType, times: Int) -> [ItemType] {
    var result = [ItemType]();
    for _ in 1...times {
        result.append(item);
    }
    return result;
}
print(repeatValue(item: 5, times: 3));
print(repeatValue(item: "A", times: 3));
print(repeatValue(item: 1.0, times: 3));
