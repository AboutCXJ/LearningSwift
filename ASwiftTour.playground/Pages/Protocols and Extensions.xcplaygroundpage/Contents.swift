//: [Previous](@previous)

import Foundation

/*协议和扩展*/


//声明协议

protocol ExampleProtocol {
    var simpleDescription: String { get }
    mutating func adjust()
}


//实现协议

//类
class SimpleClass: ExampleProtocol {
    var simpleDescription: String = "A very simple class."
    var anotherProperty: Int = 69105
    
    func adjust() {
        simpleDescription += "Now 100% adjusted."
    }
    
}

var a = SimpleClass()
a.adjust()
let aDescription = a.simpleDescription




//结构体
struct SimpleStructure: ExampleProtocol {
    var simpleDescription: String = "A simple structure"
    mutating func adjust() {
        simpleDescription += "(adjust)"
    }
}
var b = SimpleStructure()
b.adjust()
let bDescription = b.simpleDescription






//扩展

extension Int: ExampleProtocol {
    var simpleDescription: String {
        return "The number \(self)"
    }
    
    mutating func adjust() {
        self += 42
    }
    
}
print(7.simpleDescription)


extension Double{
    func absoluteValue() -> Double {
        if self < 0 {
            return -self
        }
        else{
            return self
        }
    }
}



let protocolValue: ExampleProtocol = a
print(protocolValue.simpleDescription)
// print(protocolValue.anotherProperty)  // 去掉注释可以看到错误
		