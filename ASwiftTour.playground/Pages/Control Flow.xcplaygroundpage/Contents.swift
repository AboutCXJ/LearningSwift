//: Playground - noun: a place where people can play

import UIKit

/*控制流*/

/// if
let individualScores = [75,43,103,87,12]
var teamScore = 0
for score in individualScores {
    if score > 50 {
        teamScore += 3
    }else{
        teamScore += 1
    }
}
print(teamScore)



/// 可选值
var optinalString: String? = "Hello"
print(optinalString == nil)

var optionalName: String? = "Jone Appleseed"
var greeting = "Hello!"
if let name = optionalName {
    greeting = "Hello, \(name)"
}else{
    greeting = "yes,"
}
print(greeting)

let nickName: String? = nil
let fullName: String = "john Appleseed"
let imformalGretting = "Hi \(nickName ?? fullName)"


/// switch
let vegetable = "red pepper"
switch vegetable {
case "celery":
    print("Add some raisins and make ants on a log.")
case "cucumber","watercress":
    print("That would make a good tea sandwich.")
case let x where x.hasSuffix("pepper"):
    print("Is it a spicy \(x)?")
default:
    print("Everything tastes good in soup.")
}


//for-in
let interestingNumbers = [
    "Prime": [2,3,5,7,11,13],
    "Fibonacci": [1,1,2,3,5,8],
    "Square": [1,4,9,16,25]
]

var largest = 0
var largestKind = ""

for (kind, numbers) in interestingNumbers {
    print(kind)
    for number in numbers {
        if number > largest {
            largest = number
            largestKind = kind
        }
        print(number)
    }
}
print(largest)
print(largestKind)



//while
var n = 2
while n < 100 {
    n = n * 2
}
print(n)


var m = 2
repeat{
    m = m * 2
}while m < 100
print(m)


var total = 0
for _ in 0..<4 {
    total += 1
}
print(total)
		
