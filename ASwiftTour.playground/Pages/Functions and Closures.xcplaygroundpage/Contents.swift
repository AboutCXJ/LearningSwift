//: [Previous](@previous)

import Foundation

/*函数和闭包*/


//函数
func greet(person: String, day: String) -> String{
    return "Hello \(person), today is \(day)."
}

greet(person: "Bob", day: "Tussday")



//元组
func calculateStatistics(scores: [Int]) -> (max:Int,min:Int,sum:Int){
    var max = scores[0]
    var min = scores[0]
    var sum = 0
    
    for score in scores {
        if score > max {
            max = score
        }else if score < min{
            min = score
        }
        sum += score
    }
    return(max,min,sum)
}



let statistics = calculateStatistics(scores: [5,3,100,3,9])
print(statistics.min)
print(statistics.max)
print(statistics.2)


//参数个数可变
func sumOf(numbers: Int...) -> Int{
    var sum = 0
    for number in numbers {
        sum += number
    }
    return sum
    
}
sumOf()
sumOf(numbers: 42,44,55)


//计算平均值
func avgOf(numbers: Int...) -> Int{
    var sum = 0
    
    for number in numbers {
        sum += number
    }
    
    return sum/numbers.count
}

avgOf(numbers: 1,2,3)



//函数嵌套
func returnFifteen() -> Int{
    var y = 10
    
    func add(){
        y += 5
    }
    add()
    return y
}
print(returnFifteen())




//返回值是函数
func makeIncrementer() -> ((Int) -> Int){
    func addOne(number:Int) -> Int{
        return 1 + number
    }
    return addOne
}

let increment = makeIncrementer()
increment(7)


//参数是函数
func hasAnyMatches(list: [Int], condition: (Int) -> Bool) -> Bool{
    for number in list {
        if condition(number) {
            return true
        }
    }
    return false
}

func lessThanTen(number: Int) -> Bool{
    return number < 10
}

var numbers = [20,19,7,12]
hasAnyMatches(list: numbers, condition: lessThanTen(number:))




//闭包
numbers.map({
    (number:Int) -> Int in
    if number % 2 == 0{
        let result = 3 * number
        return result
    }else{
        return 0
    }
    
})


let mappedNumbers = numbers.map({number in 3 * number})
print(mappedNumbers)

//let sortedNumbers = numbers.sort { $0 > $1 }
//print(sortedNumbers)

		
