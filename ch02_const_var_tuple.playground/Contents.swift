import UIKit

let constNum = 100;
var varNum = 200;

print("constNum = \(constNum)");
varNum = 300;
print("varNum = \(varNum)");

var num = 100;
print("num = \(num)");
var otherNum : Int = 200;
print("otherNum = \(otherNum)");

var isRun = false;
print("isRun = \(isRun)");
var isSleep : Bool = false;
print("isSleep = \(isSleep)");

var stringA = "string";
print("stringA = \(stringA)");
var stringB : String = "string";
print("stringB = \(stringB)");

let nums = [1, 2, 3];
print("nums = \(nums)");
let otherNums : Array = [1, 2, 3];
print("otherNums = \(otherNums)");

let dics = [ "one" : 1, "two" : 2];
print("dics = \(dics)");
let otherDics : Dictionary = [ "one" : 2, "two" : 1];
print("otherDics = \(otherDics)");

var intX, intY : Int;
intX = 10;
intY = 20;
print("intX, intY = \(intX), \(intY)");

let char = "a";
print("char = \(char)");
let otherChar : Character = "b";
print("otherChar = \(otherChar)");
let otherChar2 : String = "c";
print("otherChar2 = \(otherChar2)");

// tuple
var tuple1 = (1, 2, 3);
print("tuple1 = \(tuple1)");
print("tuple1.0 = \(tuple1.0)");
tuple1.0 = 1000;
print("tuple1.0 = \(tuple1.0)");
print("tuple1.1 = \(tuple1.1)");
print("tuple1.2 = \(tuple1.2)");

var (one, two, three) = tuple1;
print("one = \(one)");
print("two = \(two)");
print("three = \(three)");
