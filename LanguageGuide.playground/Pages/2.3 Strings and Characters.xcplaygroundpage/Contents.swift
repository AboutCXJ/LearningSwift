//: [Previous](@previous)

import Foundation


/*字符串和字符*/

//字符串字面量
let someString = "some string literal value"

var emptyString = ""
var anotherEmptyStrig = String()

if emptyString.isEmpty {
    print("nothing to see here")
}


//可变字符串
var variableString = "Horse"
variableString += " and Carriage"


let constantString = "highlander"
//constantString += "444"

//使用字符
for character in "Dog!🐶" {
    print(character)
}


let exclamationMark:Character = "!"

let catCharacters: [Character] = ["C", "a", "t", "!", "😼"]
let catString = String(catCharacters)
print(catString)



//连接字符串和字符
let sting1 = "hello"
let string2 = " there"
var welcome = sting1 + string2

var instruction = "look over"
instruction += string2



welcome.append(exclamationMark)


//字符串插值
let multiplier = 3
let message = "\(multiplier) times 2.5 is \(Double(multiplier) * 2.5)"


//Unicode

let wiseWords = "\"Imagination is more important than knowledge\" - Einstein"

let dollarSign = "\u{24}"
let blackHeart = "\u{2665}"
let sparklingHeart = "\u{1F496}"


//计算字符数量
let unusualMenagerie = "koala 🐨,snail 🐌"
unusualMenagerie.count


let greeting = "Guten Tag!"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]
greeting[greeting.index(after: greeting.startIndex)]
let index = greeting.index(greeting.startIndex, offsetBy: 7)
greeting[index]


for index in greeting.indices {
    print("\(greeting[index]) ", terminator: "")
}



//插入和删除
var welcome1 = "hello"
welcome1.insert("!", at: welcome1.endIndex)
welcome1.insert(contentsOf: " there", at: welcome1.index(before: welcome1.endIndex))

welcome1.remove(at: welcome1.index(before: welcome1.endIndex))

let range = welcome1.index(welcome1.endIndex, offsetBy: -6)..<welcome1.endIndex
welcome1.removeSubrange(range)


//比较字符串
let quotation = "We're a lot alike, you and I."
let someQuotation = "We're a lot alike, you and I."

if quotation == someQuotation {
    print("same")
}


//前缀后缀

let romeoAndJuliet = [
    "Act 1 Scene 1: Verona, A public place",
    "Act 1 Scene 2: Capulet's mansion",
    "Act 1 Scene 3: A room in Capulet's mansion",
    "Act 1 Scene 4: A street outside Capulet's mansion",
    "Act 1 Scene 5: The Great Hall in Capulet's mansion",
    "Act 2 Scene 1: Outside Capulet's mansion",
    "Act 2 Scene 2: Capulet's orchard",
    "Act 2 Scene 3: Outside Friar Lawrence's cell",
    "Act 2 Scene 4: A street in Verona",
    "Act 2 Scene 5: Capulet's mansion",
    "Act 2 Scene 6: Friar Lawrence's cell"
]
var actSceneCount = 0
for scene in romeoAndJuliet {
    if scene.hasPrefix("Act 1") {
        actSceneCount += 1
    }
}

print(actSceneCount)

var mansionCount = 0
var cellCount = 0
for scene in romeoAndJuliet {
    if scene.hasSuffix("Capulet's mansion") {
        mansionCount += 1
    } else if scene.hasSuffix("Friar Lawrence's cell") {
        cellCount += 1
    }
}
print("\(mansionCount) mansion scenes; \(cellCount) cell scenes")

