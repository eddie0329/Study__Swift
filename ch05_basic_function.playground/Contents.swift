import UIKit

func add10(num: Int) -> (Int) {
    return num + 10;
}

print(add10);
print(add10(num: 10));

func add(num1: Int, num2: Int) -> (Int) {
    return num1 + num2;
}

print(add(num1: 1, num2: 2));

func greet(name: String, day: String) -> (String) {
    return "Hello \(name)! Today is \(day)";
}
print(greet(name: "eddie", day: "10"));

func getPersonInfo() -> (Int, String, Int) {
    return (1, "a", 2);
}

print(getPersonInfo());
print(getPersonInfo().0);


