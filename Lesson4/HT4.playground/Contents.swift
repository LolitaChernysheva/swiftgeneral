import UIKit

var str = "Hello, playground"

//1. Описать класс Car c общими свойствами автомобилей и пустым методом действия по аналогии с прошлым заданием.


//2. Описать пару его наследников trunkCar и sportСar. Подумать, какими отличительными свойствами обладают эти автомобили. Описать в каждом наследнике специфичные для него свойства.

//3. Взять из прошлого урока enum с действиями над автомобилем. Подумать, какие особенные действия имеет trunkCar, а какие – sportCar. Добавить эти действия в перечисление.

//4. В каждом подклассе переопределить метод действия с автомобилем в соответствии с его классом.

//5. Создать несколько объектов каждого класса. Применить к ним различные действия.

//6. Вывести значения свойств экземпляров в консоль.

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
class Car {
    let brand: String
    let creatingYear: Int
    let value: Int
    
    var valueState: ValueState
    var windowState: WindowState
    
    var engineState: EngineState
    
    init(windowState: WindowState, engineState: EngineState, valueState: ValueState, brand: String, creatingYear: Int, value: Int) {
        self.windowState = windowState
        self.engineState = engineState
        self.valueState = valueState
        self.brand = brand
        self.creatingYear = creatingYear
        self.value = value
    }
    
    func changeWindowState() {
        self.windowState = windowState == .open ? .close : .open
    }
    func changeEngineState() {
        self.engineState = engineState == .start ? .stop : .start
    }
    func changeValueState() {
        self.valueState = valueState == .empty ? .full : .empty
    }
    func warming() {
    }
    
}

class TruckCar: Car {
    var weight: Int
    var spareWeel: SpareWheel
    init(spareWeel: SpareWheel, weight: Int, windowState: WindowState, engineState: EngineState, valueState: ValueState, brand: String, creatingYear: Int, value: Int ) {
        self.weight = weight
        self.spareWeel = spareWeel
        super.init(windowState: windowState, engineState: engineState, valueState: valueState, brand: brand, creatingYear: creatingYear, value: value)
        
    }
    
    override func warming() {
    }
}

class SportCar: Car {
    var enginePower: Int
    var turboState: TurboState
    init(turboState: TurboState,  windowState: WindowState, engineState: EngineState, valueState: ValueState, brand: String, creatingYear: Int, value: Int,enginePower: Int) {
        self.enginePower = enginePower
        self.turboState = turboState
        super.init(windowState: windowState, engineState: engineState, valueState: valueState, brand: brand, creatingYear: creatingYear, value: value)
    }
    override func warming() {
    }
}

var bmw = Car(windowState: .open, engineState: .start, valueState: .full, brand: "BMW x6", creatingYear: 2018, value: 200)

var camaz = TruckCar(spareWeel: .two, weight: 2000, windowState: .close, engineState: .start, valueState: .empty, brand: "камаз", creatingYear: 2014, value: 500)

var kia = SportCar(turboState: .switchOff, windowState: .close, engineState: .start, valueState: .empty, brand: "Sorento", creatingYear: 2018, value: 400, enginePower: 300)

print(bmw.engineState)
print(bmw.windowState)
print(bmw.valueState)
// заехали в гараж, выключаем автомобиль
bmw.engineState = .stop
bmw.windowState = .close
bmw.changeValueState()
print(kia.enginePower)
print(camaz.weight)
kia.warming()



