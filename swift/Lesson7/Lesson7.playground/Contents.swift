import UIKit


//1. Придумать класс, методы которого могут создавать непоправимые ошибки. Реализовать их с помощью try/catch.
//2. Придумать класс, методы которого могут завершаться неудачей. Реализовать их с использованием Error.

enum MyErrors: Error {
    case divisionByZero
    case sqrtFromNegativeNum
}

class Math {
    func div(firstNum: Int, secondNum: Int) throws {
        if secondNum == 0 {
            throw MyErrors.divisionByZero
        }
        print(firstNum / secondNum)
    }
    
    func mySqrt(num: Double) throws{
        if num < 0 {
            throw MyErrors.sqrtFromNegativeNum
        }
        print(sqrt(num))
    }
    
    func throwError() throws {
        throw fatalError()
    }
}
var math = Math()
do {
    try math.div(firstNum: 4, secondNum: Int.random(in: -1..<5))
    try math.mySqrt(num: Double.random(in: -10..<10))
    try math.throwError()
} catch MyErrors.divisionByZero {
    print("А ты смелый! Делить на ноль - хах!")
} catch MyErrors.sqrtFromNegativeNum {
    print("Только глупцы ищут квадратный корень из отрицательного числа")
} catch let error {
    print("Нежданчик")
}

