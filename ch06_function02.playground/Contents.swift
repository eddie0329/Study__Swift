import UIKit

// label
func join(String1 str1: String, String2 str2: String, withJoiner joiner: String) -> (String) {
    return str1 + joiner + str2;
}

print(join(String1: "hello", String2: "world", withJoiner: ","));

func getAverage(numbers: Int...) -> (Int) {
    var total: Int = 0;
    for number in numbers {
        total += number;
    }
    return total / numbers.count;
}

print(getAverage(numbers: 1, 2, 3, 4, 5));

func add(n1: Int, n2: Int) -> Int {
    return n1 + n2;
}

// this is how to assign function in variable
var mathFunction: (Int, Int) -> Int = add;
print(mathFunction(1, 10));

func printMathResult(mathFunction: (Int, Int) -> Int, a: Int, b: Int) {
    print(mathFunction(a, b));
}
printMathResult(mathFunction: mathFunction, a: 100, b: 100);

func stepForward(input: Int) -> Int {
    return input + 1;
}

func stepBackward(input: Int) -> Int {
    return input - 1;
}

func chooseStep(backward: Bool) -> (Int) -> Int {
    return backward ? stepForward : stepBackward;
}

chooseStep(backward: true)(10);
chooseStep(backward: false)(10);
