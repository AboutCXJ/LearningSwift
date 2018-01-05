//: [Previous](@previous)

import Foundation

/*集合类型*/

//创建空数组
var someInts = [Int]()
print("someInts if of type [Int] with \(someInts.count) items.")

someInts.append(3)

someInts = []


//创建默认值数组
var threeDoubles = Array(repeating: 0.0, count: 3)


//通过两个数组相加创建一个数组
var anotherThreeDoubles = Array(repeating: 2.5, count: 3)

var sixDoubles = threeDoubles + anotherThreeDoubles



//用数组字面量构造数组
var shoppingList: [String] = ["Eggs","Milk"]


//访问和修改数组
print("The shopping list contains \(shoppingList.count) items.")

if shoppingList.isEmpty {
    print("The shopping list is empty.")
}else{
    print("The shopping list is not empty.")
}

shoppingList.append("Flour")

shoppingList += ["Baking powder"]
shoppingList += ["Chocolate Spread", "Cheese", "Butter"]


var firstItem = shoppingList[0]

shoppingList[0] = "Six eggs"

shoppingList[4...6] = ["Bananas","Apples"]

shoppingList.insert("Maple Syrup", at: 0)

let mapleStrup = shoppingList.remove(at: 0)

firstItem = shoppingList[0]

let apples = shoppingList.removeLast()



//数组的遍历
for item in shoppingList {
    print(item)
}

for (index, value) in shoppingList.enumerated() {
    print("Item \(index+1) : \(value)")
}




//创建和构造一个空的集合
var letters = Set<Character>()
print("letters is of type Set<Character> with \(letters.count) items.")

letters.insert("a")


letters = []

//用数组字面量创建集合

//var favoriteGenres: Set<String> = ["Rock","Classical","Hip hop"]

var favoriteGenres: Set = ["Rock","Classical","Hip hop"]


//访问和修改一个集合
print("I have \(favoriteGenres.count) favorite music genres.")

if favoriteGenres.isEmpty {
    print("As far as music gose, i'm not picky.")
}else {
    print("I have particular music preference.")
}


favoriteGenres.insert("Jazz")

if let removedGenres = favoriteGenres.remove("Rock") {
    print("\(removedGenres)? I'm over it.")
}else{
    print("I never much cared for that.")
}


if favoriteGenres.contains("Funk") {
    print("I Get up on the goot foot.")
}else {
    print("It's too funky in here.")
}


//遍历一个集合
for genre in favoriteGenres {
    print("\(genre)")
}



for genre in favoriteGenres.sorted() {
    print("\(genre)")
}

//集合操作

//基本集合操作
let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8]
let singleDigitPrimeNumbers: Set = [2, 3, 5, 7]

//合并
oddDigits.union(evenDigits).sorted()

//共同部分
oddDigits.intersection(evenDigits).sorted()

// oddDigits 减去 singleDigitPrimeNumbers
oddDigits.subtracting(singleDigitPrimeNumbers).sorted()

//合并 减去共同部分
oddDigits.symmetricDifference(singleDigitPrimeNumbers).sorted()




//集合成员关系和相等
let houseAnimals:Set  = ["🐶", "🐱"]
let farmAnimals: Set = ["🐄", "🐔", "🐑", "🐶", "🐱"]
let cityAnimals: Set = ["🐦", "🐭"]


houseAnimals.isSubset(of: farmAnimals)

farmAnimals.isSuperset(of: houseAnimals)

farmAnimals.isDisjoint(with: cityAnimals)


//字典

//创建一个空字典
var nameOfIntegers = [Int: String]()

nameOfIntegers[16] = "sixteen"

nameOfIntegers = [:]


//用字典字面量创建字典
var airports = ["YYZ": "Toronto Pearson", "DUB": "Dublin"]


//访问和修改字典
print("The dictionary of airports contains \(airports.count) items.")

if airports.isEmpty {
    print("The airports dictionary is empty")
}else {
    print("The airports dictionary is not empty")
}

airports["LHR"] = "London Heathrow"


if let oldValue = airports.updateValue("Dublin Airport", forKey: "DUB") {
    print("The old value for DUN was \(oldValue).")
}

airports["APL"] = "Apple internation"

airports["APL"] = nil


if let removedValue = airports.removeValue(forKey: "DUB"){
    print("The remove airport's name is \(removedValue).")
}else {
    print("The airports dictionary does not contain a value for DUB.")
}



//字典遍历
for (airportCode, airportName) in airports {
    print("\(airportCode): \(airportName)")
}

for airportCode in airports.keys {
    print("Airport code: \(airportCode)")
}

for airportName in airports.values {
    print("Airport name: \(airportName)")
}
