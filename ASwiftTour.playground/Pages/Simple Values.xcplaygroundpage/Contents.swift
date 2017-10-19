//: [Previous](@previous)

import Foundation

print("Hello,world!")

/*简单值*/

//常量变量
var myVariable = 42
myVariable = 50
let myConstant = 42

//类型推断
let implicitInteger = 70
let implicitDouble = 70.0
let explicitDouble:Double = 70

let explicitFloat:Float = 4

//类型转换
let lable = "This Width is "
let width = 94
let widthLable = lable + String(width)

let apples = 3
let orange = 5
let appleSum = "I have \(apples) apples"
let fruitSum = "I have \(apples+orange) pieces of fruit"

let weight = 68.0
let name = "xiaoming"
let hi = "hi " + name + " \(weight) kilo"


//数组字典
var shoppingList = ["catfish","water","tulips","blue paint",1] as [Any]
shoppingList[1] = "bottle of water"
print(shoppingList)

var occupations = [
    "malcolm":"Captain",
    "kaylee":"mechanic"
]
occupations["jsyne"] = "public relation"
occupations["kaylee"] = "hahah"
print(occupations)


let empytyArray = [String]()
let emptyDictionary = [String:Float]()
















		
