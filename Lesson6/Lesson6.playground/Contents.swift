import UIKit

var str = "Hello, playground"
//1. Реализовать свой тип коллекции «очередь» (queue) c использованием дженериков.

//2. Добавить ему несколько методов высшего порядка, полезных для этой коллекции (пример: filter для массивов)

//3. * Добавить свой subscript, который будет возвращать nil в случае обращения к несуществующему индексу.
//var someInt = 3
//var anotherInt = 198
//swapTwoValues (&someInt, &anotherInt)

//var someString = "Hello"
//var anotherString = "World"
//swapTwoValues (&someString, &anotherString)
//print(someInt)
//print(someString)

class Queue <T> {
    private var arrayOfElements : [T] = []
    func addNewElement (element: T){
        arrayOfElements.append(element)
    }
    func getElement() -> T {
        return arrayOfElements.removeFirst()
    }
}
var queueStrings = Queue<String>()
queueStrings.addNewElement(element: "hello")
queueStrings.addNewElement(element: "world")
queueStrings.addNewElement(element: "etc")
print(queueStrings.getElement())
print(queueStrings.getElement())
print(queueStrings.getElement())
var queueInt = Queue<Int>()
queueInt.addNewElement(element: 23)
queueInt.addNewElement(element: 45)
print(queueInt.getElement())
print(queueInt.getElement())

