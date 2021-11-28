import UIKit
import Foundation


let hello = { () -> () in
  print("Hello")
}

hello()

let hello2 = { (name: String) -> String in
  return "Hello, \(name)"
}

// hello2(name: "Eddie") -> 함수처럼 label 이있는 형대로 전달 하면 에러
hello2("Eddie") // Hello, Eddie

func doSomeThing(closure: () -> ()) {
  closure();
}

doSomeThing(closure: { () -> () in
  print("HELLO")
}) // hello

doSomeThing { () -> () in
  print("hello2")
}

func doSomeThing2() -> () -> () {
  return { () -> () in
    print("HELLO4")
  }
}

doSomeThing2()

func temp(success: () -> (), fail: () -> ()) {
  success()
  fail()
}

temp {
  () -> () in
  print("success")
} fail: {
  () -> () in
  print("fail")
}

func temp2(closure: (Int, Int, Int) -> Int) {
  closure(1, 2, 3)
}

temp2(closure: { (a, b, c) in
  return a + b + c
})

// $0...으로 인자 값을 참고 할수 있다
temp2(closure: {
  return $0 + $1 + $2
})

// return을 생략가능
temp2(closure: {
  // print("hello") 단일 리턴문이 아니면 에러 발생
  $0 + $1 + $2
})

// 밖으로 뺴낼수 있다
temp2() {
  $0 + $1 + $2
}

// 인자가 하나라면 ()도 생략 가능
temp2 {
  $0 + $1 + $2
}

