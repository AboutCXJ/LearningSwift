//: [Previous](@previous)

import Foundation


/*枚举和结构体*/


//枚举
enum Rank: Int {
    case Ace = 1
    case Two, Three, Four, Five, Six, Seven, Eight, Ten
    case Jack, Queen, King
    
    func simpleDescription() -> String {
        switch self {
        case .Ace:
            return "ace"
        case .Jack:
            return "jack"
        case .Queen:
            return "queen"
        case .King:
            return "king"
        default:
            return String(self.rawValue)
        }
    }
}

//原始值
let ace = Rank.Ace
let aceRawValue = ace.rawValue


//原始值 <=> 枚举值
if let convertRank = Rank(rawValue: 3){
    let threeDescription = convertRank.simpleDescription()
    
}


enum Suit {
    case Spades, Hearts, Diamonds, Clubs
    func simpleDescription() -> String {
        switch self {
        case .Spades:
            return "spades"
        case .Hearts:
            return "hearts"
        case .Diamonds:
            return "diamonds"
        case .Clubs:
            return "clubs"
        }
    }
    
    func color() -> String {
        switch self {
        case .Spades, .Clubs:
            return "black"
        case .Hearts, .Diamonds:
            return "red"
        }
    }
}


let herts = Suit.Hearts
let heartsDescription = herts.simpleDescription()



//实例值
enum ServerResponse {
    case Result(String,String)
    case Failure(String)
}


let success = ServerResponse.Result("6:00 am", "9:00 pm")
let failure = ServerResponse.Failure("failure")


switch success {
case let .Result(sunrise,sunset):
    let serverResponse = "Sunrise is at \(sunrise) and sunset is at \(sunset)."
    
case let .Failure(message):
    print("Failure...\(message)")
}



//结构体
struct Card {
    var rank: Rank
    var suit:Suit
    func simpleDescription() -> String {
        return "The \(rank.simpleDescription()) of \(suit.simpleDescription())"
    }
}

let threeOfSpades = Card(rank: .Three, suit: .Spades)
let threeOfSpadesDescription = threeOfSpades.simpleDescription()


