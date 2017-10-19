//: [Previous](@previous)

import Foundation

/*对象和类*/

class Shape {
    var numberOfSides: Int = 0
    let age = 12

    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
    func eat(food: String) -> String {
        return "He eat \(food)."
    }
    
}

var shape = Shape()
shape.numberOfSides = 7
var shapeDescription = shape.simpleDescription()



//构造函数
class NamedShape{
    var numberOfSides: Int = 0
    var name: String
    
    init(name: String) {
        self.name = name
    }
    
    func simpleDescription() -> String {
        return "A shape with \(numberOfSides) sides."
    }
}


//重写父类方法
class Square: NamedShape{
    var sideLength: Double
    
    init(sideLength: Double, name: String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 4
    }
    
    func area() -> Double {
        return sideLength * sideLength
    }
    
    override func simpleDescription() -> String {
        return "A square with sides of length \(sideLength)."
    }
    
}


let test = Square(sideLength: 5.2, name:"my test square")
test.area()
test.simpleDescription()



//属性
class Circle: NamedShape{
    var radius: Double
    
    init(radius: Double, name: String) {
        self.radius = radius
        super.init(name: name)
    }
    
    func area() -> Double {
        return radius * 2 * 3.14159
    }
    
    override func simpleDescription() -> String {
        return "这是一个半径为\(radius)的\(name)"
    }
}

let circle = Circle(radius: 5.2, name:"圆")
circle.simpleDescription()
circle.area()





//get/set
class EquilateralTriangle: NamedShape{
    var sideLength: Double = 0
    
    init(sideLength: Double, name:String) {
        self.sideLength = sideLength
        super.init(name: name)
        numberOfSides = 3
    }
    
    var perimeter: Double {
        get{
            return 3.0 * sideLength
        }
        set{
            sideLength = newValue / 3.0
        }
    }
    
    
    override func simpleDescription() -> String {
        return "An equilateral triagle with sides of length \(sideLength)."
    }
    
  
}

var triangle = EquilateralTriangle(sideLength: 3.1, name: "a triangle")
print(triangle.perimeter)
triangle.perimeter = 9.9
print(triangle.sideLength)





//willSet/didSet
class TriangleAndSquare{
    var triangle: EquilateralTriangle{
        willSet{
            square.sideLength = newValue.sideLength
        }
    }
    
    var square: Square{
        willSet{
            triangle.sideLength = newValue.sideLength
        }
    }
    
    init(size: Double, name: String) {
        square = Square(sideLength: size, name: name)
        triangle = EquilateralTriangle(sideLength: size, name: name)
    }
}


var triangleAndSquare = TriangleAndSquare(size: 10, name: "hahahha")
print(triangleAndSquare.square.sideLength)
print(triangleAndSquare.triangle.sideLength)

triangleAndSquare.square = Square(sideLength: 50, name: "larger square")
print(triangleAndSquare.triangle.sideLength)




//处理变量可选值
let optionalSquare: Square? = Square(sideLength: 10, name: "123")
let sideLength = optionalSquare?.sideLength

