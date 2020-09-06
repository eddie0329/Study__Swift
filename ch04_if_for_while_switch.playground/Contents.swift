import UIKit

// if else

var n = 10;
var m = 20;

if (n == m) {
    print("n and m is winner");
} else if (n < m) {
    print("n is winner");
} else {
    print("m is winner");
}

for index in 1...5 {
    print("index: \(index)");
}

for index in 1..<5 {
    print("index2: \(index)");
}

var base = 2;
var power = 5;
var answer = 1;

for _ in 1...power {
    answer *= base;
}
print("anwer = \(answer)");

for ch in "hello" {
    print(ch);
}

for (index, ch) in "hello".enumerated() {
    print(index, ch);
}

// while
n = 1;
m = 5;

while n < m {
    n += 1;
}

n = 5;
m = 10;

repeat {
    n += 1;
} while n < m;

var ch = "a";

switch ch {
case "a":
    print("match");
default:
    print("unmatch");
}

n = 1;
switch n {
case 1...5:
    print("small");
default:
    print("large");
}

ch = "A";
switch ch {
case "A"..."Z":
    print("Upper case");
case "a"..."z":
    print("lower case");
default:
    print("None aplhabetical");
}

ch = "a";

switch ch {
case "a", "e", "i", "o", "u":
    print("vowel");
default:
    print("none vowel");
}

var point = (100, 0);

switch point {
case (_, 0):
    print("X");
case (0, _):
    print("Y");
default:
    print("somewhere");
}

point = (1, 10);
switch point {
case (0, 0):
    print("default");
case (let x, 1...2):
    print("point 0");
case (1...2, let y):
    print("pont 1");
default:
    print("anywhere");
}

switch point {
case let(x, y) where x == y:
    print("equal");
case let(x, y) where x > y:
    print("X is larger");
case let(x, y) where x < y:
    print("Y is larger");
default:
    print("none");
}

var strInput = "hello";
var strOutput = "";

for char in strInput {
    switch char {
    case " ":
        continue
        // fallthrough -> go to default
    default:
        strOutput.append(char);
    }
}
print(strOutput);
