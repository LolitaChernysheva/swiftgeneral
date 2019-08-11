import UIKit

var str = "Hello, playground"

//1. Создать протокол «Car» и описать свойства, общие для автомобилей, а также метод действия.

//2. Создать расширения для протокола «Car» и реализовать в них методы конкретных действий с автомобилем: открыть/закрыть окно, запустить/заглушить двигатель и т.д. (по одному методу на действие, реализовывать следует только те действия, реализация которых общая для всех автомобилей).

//3. Создать два класса, имплементирующих протокол «Car» - trunkCar и sportСar. Описать в них свойства, отличающиеся для спортивного автомобиля и цистерны.

//4. Для каждого класса написать расширение, имплементирующее протокол CustomStringConvertible.

//5. Создать несколько объектов каждого класса. Применить к ним различные действия.

//6. Вывести сами объекты в консоль.

enum WindowState: String {
    case open = "Открыты"
    case close = "Закрыты"
}

enum EngineState {
    case start, stop
}

enum ValueState{
    case empty, full
}
enum TurboState{
    case switchOn, switchOff
}
enum SpareWheel{
    case zero, one, two
}

protocol Car {
    var brand: String { get set}
    var creatingYear: Int { get set}
    var value: Int { get set}
    
    var valueState: ValueState { get set}
    var windowState: WindowState { get set}
    
    var engineState: EngineState { get set}
    func changeWindowState() -> WindowState
}
extension Car {
   mutating func changeEngineState() -> EngineState {
        self.engineState = self.engineState == EngineState.start ? EngineState.stop : EngineState.start
        return self.engineState
    }
    mutating func changeValueState() -> ValueState {
        self.valueState = self.valueState == ValueState.empty ? ValueState.full : ValueState.empty
        return self.valueState
    }
}
class SportCar: Car, CustomStringConvertible {
    var description: String
    
    var brand: String = ""
    var creatingYear: Int = 0
    var value: Int = 0
    var valueState: ValueState
    var windowState: WindowState
    var engineState: EngineState
    var horsePower: Int
    init(windowState: WindowState, engineState: EngineState, valueState: ValueState, brand: String, creatingYear: Int, value: Int, horsePower: Int, description: String) {
        self.windowState = windowState
        self.engineState = engineState
        self.valueState = valueState
        self.brand = brand
        self.creatingYear = creatingYear
        self.value = value
        self.horsePower = horsePower
        self.description = description
    }
    func changeWindowState() -> WindowState {
        self.windowState = self.windowState == .open ? .close : .open
        return self.windowState
    }
}
class TruckCar: Car, CustomStringConvertible {
    var description: String
    
    var brand: String = ""
    
    var creatingYear: Int = 0
    
    var value: Int = 0
    
    var valueState: ValueState
    
    var windowState: WindowState
    
    var engineState: EngineState
    
    
    var weight: Int = 0
    var spareWeel: SpareWheel
  
    init(spareWeel: SpareWheel, weight: Int, windowState: WindowState, engineState: EngineState, valueState: ValueState, brand: String, creatingYear: Int, value: Int, description: String ) {
        self.windowState = windowState
        self.engineState = engineState
        self.valueState = valueState
        self.brand = brand
        self.creatingYear = creatingYear
        self.value = value
        self.spareWeel = spareWeel
        self.weight = weight
        self.description = description
    }
    func changeWindowState() -> WindowState {
        self.windowState = self.windowState == .open ? .close : .open
        return self.windowState
    }
}
    
var kia = SportCar(windowState: .close, engineState: .start, valueState: .empty, brand: "kia", creatingYear: 2017, value: 300, horsePower: 300, description: "kia optima")
var camaz = TruckCar(spareWeel: .one, weight: 3000, windowState: .close, engineState: .start, valueState: .empty, brand: "camaz", creatingYear: 2014, value: 500, description: "camaz camaz")

print (kia.engineState)
print (kia.changeEngineState())
print (camaz.valueState)
print (camaz.changeValueState())
print (kia.description)
print (camaz.description)
