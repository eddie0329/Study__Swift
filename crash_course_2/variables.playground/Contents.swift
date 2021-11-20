import UIKit

var numbers: Array<Int> = Array<Int>()
numbers.append(1)
numbers.append(2)
numbers.append(3)
numbers.insert(4, at: 2)
numbers.remove(at: 2)
numbers
//var dic: Dictionary<String, Int> = Dictionary<String, Int>()
var dic: [String: Int] = ["eddie" : 1, "sam" : 2]
dic.removeValue(forKey: "eddie")
dic
var set: Set = Set<Int>([1, 2, 3])
set.remove(1)
set

func sum (a: Int, b: Int) -> Int {
  return a + b
}

sum(a: 2, b: 3)

func hello() -> String {
  return "hello"
}

hello()

func printName(name: String = "Eddie") {
  print("Hello \(name)")
}

printName()

func sendMessage(from myName: String, to name: String) -> String {
  return "Hello \(name)! I am \(myName)"
}

sendMessage(from: "Sam", to: "Eddie")

func sub(_ a: Int, _ b: Int) -> Int {
  return a - b
}

sub(4, 1)

func sayHello(me: String, friends: String...) -> String {
  return "HELLO \(friends)  !!! by \(me)"
}

sayHello(me: "Eddie", friends: "Sam", "Claire", "Jason")

var temp: [Int] = []

temp.append(1)
temp.append(2)
