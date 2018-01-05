//: [Previous](@previous)

import Foundation
/*基础部分*/

//常量和变量

//声明
let maximumNumberOfloginAttempts = 10
var currentLoginAttempt = 0

var x = 0.0, y = 0.0, z = 0.0


//类型标注
var welcomeMessage: String
welcomeMessage = "Hello"

var red, green, blue: Double


//常量和变量的命名
let 😃 = "smile"
let 你好 = "你好"


var friendlyWelcome = "Hello"
friendlyWelcome = "Bonjour"

let languageName = "Swift"
//languageName = "Swift++"


//输出变量和常量
print(friendlyWelcome)
print("The Current value of friendlyWelcomeis \(friendlyWelcome)")



//注释

// 这是一个注释


/* 这是一个,
 多行注释 */


/* 这是第一个多行注释的开头
 /* 这是第二个被嵌套的多行注释 */
 这是第一个多行注释的结尾 */



//分号
let cat = "😼"; print(cat)



//整数
let minValue = UInt8.min
let maxValue = UInt8.max


//类型安全与类型推断
let meaningOfLife = 42

let pi = 3.14159

let anotherPi = 3 + 0.14159



//数值型字面量
let decimalInteger = 17
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexadecimaInteger = 0x11



let decimalDouble = 12.1875
let exponentDouble = 1.21875e1
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 000123.456
let oneMillion = 1_000_000
let justOverOneMillion = 1_000_000.000_000_1



//数值型类型转换

//整数转换
//let cannotBeNegative:UInt8 = -1

//let toBig: Int8 = Int8.max + 1


let twoThonsand: UInt16 = 2000
let one: UInt8 = 1

let twoThonsandAndOne = twoThonsand + UInt16(one)


//整数和浮点数转换
let three = 3
let pointOneFourOneFiveNine = 0.14159
let pii = Double(three) + pointOneFourOneFiveNine


let integerPi = Int(pii)


//类型别名
typealias AudioSample = UInt16

var maxAmplitudeFound = AudioSample.min



//布尔值
let orangeAreOrange = true
let turnipsAreDelicious = false

if turnipsAreDelicious {
    print("Mmm, tasty turnips!");
}else{
    print("Eww, turnips are horrible.")
}

//元组
let http404Error = (404,"Not Found")

let (statusCode, statusMessage) = http404Error
print(statusCode)
print(statusMessage)


let (justTheStatusCode, _) = http404Error
print(justTheStatusCode)

print(http404Error.0)
print(http404Error.1)

let http200Status = (statusCode: 200, statusMessage: "OK")
print(http200Status.statusCode)
print(http200Status.statusMessage)


//可选类型
let possibleNumber = "123"
let convertedNumber = Int(possibleNumber)


var serverResponseCode: Int? = 404
serverResponseCode = nil


var surverAnswer: String?

if convertedNumber != nil{
    print("convertedNumber contains some integer value.")
}

if convertedNumber != nil {
    print("convertedNumber has an integer value of \(convertedNumber!).")
}


//可选绑定
if let actualNumber = Int(possibleNumber) {
    print("\'\(possibleNumber)' has an integer value of \(actualNumber)")
}else{
    print("'\(possibleNumber)' could not be converted to an integer")
}

if let firstNumber = Int("4"), let secondNumber = Int("42"), firstNumber < secondNumber &&  secondNumber < 100{
    print("\(firstNumber) < \(secondNumber) < 100")
}

if let firsrNumber = Int("4") {
    if let secondNumber = Int("42") {
        if firsrNumber < secondNumber && secondNumber < 100 {
            print("\(firsrNumber) < \(secondNumber) < 100")
        }
    }
}



//隐式解析可选类型
let possibleString: String? = "an optional string"
let forcedString:String = possibleString!

let assumedString: String! = "An implicitly unwrapped optional string."
let impliciString: String = assumedString


//错误处理
func canThrowAnError() throws {
    
}

do {
    try canThrowAnError()
} catch {
    
}

//断言
let age = 3
assert(age >= 0, "A person's age cannot be less than zero")

