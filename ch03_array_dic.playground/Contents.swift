import UIKit

var str = "Hello, playground"

var inArray1 : [Int] = [100, 200, 300, 400];

var intArray2 : Array<Int> = [10, 20, 30];

var intArray3 : [Int] = [Int]();

var antArray : [Any] = [1, 2, "a", "b"];


// 배열의 생성과 초기화
var threeDoubles = [Double](repeating: 0.0, count: 3);
var fourInts = [Int](repeating: 1, count: 4);
var eightInts = fourInts + fourInts;

var stringArray0 : [String] = ["hello", "world"];
var stringArray1 = [String]();
var stringArray2 : [String] = [];

stringArray0.count;
stringArray1.count;

var stringArr : [String] = [];
stringArr.append("hello");
stringArr.append("swift");

var intArr : [Int] = [Int]();
intArr += [50];
intArr += [60];

var stringArr1 : [String] = [String]();
stringArr1 += ["hello", "world"];

if stringArr1.isEmpty {
    "empty"
} else {
    "not Empty"
}

// 배열의 접근 방법
var intArr1 : [Int] = [1, 2, 3];
intArr1[0];
intArr1[0...2];
intArr1[0] = 10;
intArr1
intArr1[0...2] = [100, 200, 300];
intArr1.insert(99, at: 0);
intArr1.reverse();
intArr1.removeFirst();
intArr1.removeLast();
intArr1.remove(at: 1);

for item in intArr {
    item
}

// enumerate -> index, value (tuple)
for (index, value) in intArr.enumerated() {
    "index: \(index), value: \(value)"
}

//dictionary
var keyValue : [String:String] = ["2" : "A", "1" : "B"];
var keyValue2 : [String:String] = ["a" : "A", "b" : "B"];
var keyValue3 : [String:String] = Dictionary<String, String>();

keyValue.count;
keyValue["2"] = "two";
keyValue.count;

keyValue.updateValue("Two", forKey: "2");
keyValue

keyValue.removeValue(forKey: "2");
keyValue

for (key, value) in keyValue2 {
    "key: \(key), value: \(value)"
}

for key in keyValue2.keys {
    key
}

for value in keyValue2.values {
    value
}

var keyArr = Array(keyValue2.keys);
var valueArr = Array(keyValue2.values);
