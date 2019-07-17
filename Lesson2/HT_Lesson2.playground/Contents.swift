import UIKit

var str = "Hello, playground"
//1. Написать функцию, которая определяет, четное число или нет.

func isEven (digit: Int) {
    var divResult = 0
    divResult = digit % 2
    if divResult == 0 {
        print ("Число четное")
    } else {
         print ("Число нечетное")
    }
}
isEven(digit: 5)
isEven(digit: 6)
isEven(digit: 12)


//2. Написать функцию, которая определяет, делится ли число без остатка на 3.

func isDivByThree (digit: Int) {
    var divResult = 0
    divResult = digit % 3
    if divResult == 0 {
        print ("Число делится на 3")
    } else {
        print ("Число не делится на 3 без остатка")
    }
}
isDivByThree(digit: 5)
isDivByThree(digit: 9)
isDivByThree(digit: 34)

//3. Создать возрастающий массив из 100 чисел.

var numbers: [Int] = []
for i in 1...100 {
    numbers.append(i)
}

//4. Удалить из этого массива все четные числа и все числа, которые не делятся на 3.
numbers.remove(at: 1)//delete by index
numbers[0] //get item by index
var indexCount = 0
for item in numbers {
    if item % 2 == 0 || item % 3 > 0 {
        numbers.remove(at: indexCount)
    } else {
        indexCount = indexCount + 1
    }
}
print(numbers)

//5. * Написать функцию, которая добавляет в массив новое число Фибоначчи, и добавить при помощи нее 100 элементов. Fn=Fn-1 + Fn-2.
func addItemFn (fibonachiNums: [UInt64]) -> [UInt64] {  // объявление функции с параметром массим целочисленных значений. Функция возвращает массив целочисленных значений
    var mutatedFiboNums = fibonachiNums  // копируем массив, так как не можем изменить исходный
    if mutatedFiboNums.count == 0 {
       mutatedFiboNums.append(0)
    } else if mutatedFiboNums.count == 1 {
        mutatedFiboNums.append(1)
    } else {
        let last: UInt64 = mutatedFiboNums[mutatedFiboNums.count - 1]
        let beforeLast: UInt64 = mutatedFiboNums[mutatedFiboNums.count - 2]
        let addingItem: UInt64 = beforeLast + last
        mutatedFiboNums.append(addingItem)
    }
    return mutatedFiboNums   // возвращаем измененный массив
}
var fibonachiNums: [UInt64] = []
while fibonachiNums.count < 50 { // 50 элементов, т.к примерно на 90-м происходит переполнение, и программа падает с ошибкой, можно использовать тип данных Double, но это эстетически неприятно
    fibonachiNums = addItemFn(fibonachiNums: fibonachiNums)
}
print(fibonachiNums)

