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


var name: String? = "Eddie"

print(name)
print(name!)

if let tempName = name {
  print(tempName)
} else {
  // .. 값이 추출 안되면..
}

func test() {
  let number: Int? = nil;
  guard let result = number else { return }
  print(result)
}

test()

let value: Int? = 4

if value == 4  {
  print("HELLO")
} else {
  print("NOT HELLO")
}

struct User {
  var nickname: String
  var age: Int
  
  init(age: Int) {
    self.nickname = "eddie"
    self.age = age
  }
  
  func information() {
    print("\(nickname) \(age)")
  }
}

//var user = User(nickname: "Eddie", age: 11)
//user.nickname
//user.age
//user.age = 100
//user.age
//
//user.information()

var user2 = User(age: 11)
user2.age

class Dog {
  var name: String = ""
  var age: Int = 0
  
  init() {}
  
  init(name: String, age: Int) {
    self.name = name
    self.age = age
  }
 
  func introduce() {
    print("name: \(name), age: \(age)")
  }
  
  deinit {
    print("deint dog")
  }
}

var dog = Dog(name: "Kadon", age: 100)
dog.name
dog.age
dog.name = "Coco"
dog.age = 3
dog.name
dog.age
dog.introduce()
var dog2: Dog? = Dog()
dog2 = nil


struct Cat {
  static var breed: Bool = true
  var name: String = "Claire" {
    willSet {
      print("willset: \(newValue)")
    }
    didSet {
      print("didSet: \(oldValue)")
    }
  }
  let gender: String
    
  var information: String {
    get {
      return "\(name) \(gender) !!  "
    }
    set (newName) {
      name = newName
    }
  }
}

//var cat = Cat(name: "Sam", gender: "Male")
//cat.information
//cat.information = "Eddie"
//cat.information

Cat.breed

func guardTest(value: Int) {
  guard value == 0 else { return }
  print("HELLO WORLD")
}

guardTest(value: 0) // HELLO WORLD
guardTest(value: 1)

func guardTest2(value: Int?) {
  guard let value = value else { return }
  print(value)
}

guardTest2(value: 2) // 2
guardTest2(value: nil)


//protocol SomeProtocol1 {
//
//}
//
//protocol SomeProtocol2 {
//
//}
//
//struct SomeStruct: SomeProtocol1, SomeProtocol2 {
//
//}
//
//protocol FirstProtocol {
//  var name: Int { get set } // readble, writable
//  var age: Int { get } // readable
//}
//
//protocol SecondProtocol {
//  static var someTypeProperty: Int { get set }
//}

protocol FullyNames {
  var fullName: String { get set }
  init(age: Int, fullName: String)
  func printFullName()
}

struct Person: FullyNames {
  var fullName: String
  var age: Int
  func  printFullName() {
    print(fullName)
  }
  init(age: Int, fullName: String) {
    self.age = age
    self.fullName = fullName
  }
}

var person = Person(age: 10, fullName: "Eddie Choi")
person.printFullName()
person.fullName = "Sam Choi"
person.printFullName()


//
//class SomeSuperClass {
//
//}
//
//class SomeClass: SomeSuperClass, FirstProtocol, SecondProtocol {
//
//}

protocol SomeProtocol5 {
  init()
}

class SomeClass  {
  required init () {
    
  }
}




