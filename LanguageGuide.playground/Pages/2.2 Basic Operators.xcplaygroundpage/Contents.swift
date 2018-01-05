//: Playground - noun: a place where people can play

import UIKit


/*基本运算符*/


//赋值运算符
let b = 10
var a = 5
a = b


let (x, y) = (1, 2)

//算术运算符

1 + 2
5 - 3
2 * 3
10.0 / 2.5

"hello," + "world"


//求余运算符
9 % 4
-9 % 4
9 % -4


//一元负号运算符
let three = 3
let  minusThree = -three
let plusThree = -minusThree

//一元正号运算符
let minusSix = -6
let alsoMinusSix = +minusSix

//组合赋值运算符
var a1 = 1
a1 += 2



//比较运算符
let name = "world"
if name == "world" {
    print("hello, world")
}else{
    print("I'm sorry \(name), but I don't recognize you")
}

//三目运算符
let contenHeight = 40
let hasHeader = true
let rowHeight = contenHeight + (hasHeader ? 50 :20)

let defaultColorName = "red"
var userDefinedColorName: String?

var colorNameToUse = userDefinedColorName ?? defaultColorName


//区间运算符

//闭区间运算符
for index in 1...5 {
    print(index)
}


//半开区间运算符
let names = ["Anna", "Alex", "Brian", "Jack"]
let cout = names.count
for i in 0..<cout {
    print("第 \(i + 1) 个人叫 \(names[i])")
}


//单侧区间
for name in names[2...] {
    print(name)
}

for name in names[...2] {
    print(name)
}

for name in names[..<2] {
    print(name)
}


let range = ...5
range.contains(7)
range.contains(4)
range.contains(-1)


//逻辑运算符
let allowedEntry = false
if !allowedEntry {
    print("ACCESS DENIED")
}


let enteredDoorCode = true
let passedRetinaScan = false
if enteredDoorCode && passedRetinaScan {
    print("welcome")
}else{
    print("ACCESS DENIED")
}


let hasDoorKey = false
let knowsOverridePassword = true
if hasHeader || knowsOverridePassword {
    print("welcome")
}else{
    print("ACCESS DENIED")
}

if enteredDoorCode && passedRetinaScan || hasDoorKey || knowsOverridePassword {
    print("welcome")
}else{
    print("ACCESS DENIED")
}



