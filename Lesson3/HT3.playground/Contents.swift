import UIKit

var str = "Hello, playground"
//1. Описать несколько структур – любой легковой автомобиль и любой грузовик.

//2. Структуры должны содержать марку авто, год выпуска, объем багажника/кузова, запущен ли двигатель, открыты ли окна, заполненный объем багажника.

//3. Описать перечисление с возможными действиями с автомобилем: запустить/заглушить двигатель, открыть/закрыть окна, погрузить/выгрузить из кузова/багажника груз определенного объема.

//4. Добавить в структуры метод с одним аргументом типа перечисления, который будет менять свойства структуры в зависимости от действия.

//5. Инициализировать несколько экземпляров структур. Применить к ним различные действия.

6//. Вывести значения свойств экземпляров в консоль.

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

struct Car {
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
    
    mutating func changeWindowState() {
        self.windowState = windowState == .open ? .close : .open
    }
    mutating func changeEngineState() {
        self.engineState = engineState == .start ? .stop : .start
    }
    mutating func changeValueState() {
        self.valueState = valueState == .empty ? .full : .empty
    }
    
}

struct Truck {
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
    
    mutating func changeWindowState() {
        self.windowState = windowState == .open ? .close : .open
    }
    mutating func changeEngineState() {
        self.engineState = engineState == .start ? .stop : .start
    }
    mutating func changeValueState() {
        self.valueState = valueState == .empty ? .full : .empty
    }
    
}

var bmw = Car(windowState: .open, engineState: .start, valueState: .full, brand: "BMW x6", creatingYear: 2018, value: 200)

var camaz = Truck(windowState: .close, engineState: .start, valueState: .empty, brand: "камаз", creatingYear: 2014, value: 500)

var kia = Car(windowState: .open, engineState: .start, valueState: .full, brand: "Sorento", creatingYear: 2019, value: 300)

print(bmw.engineState)
print(bmw.windowState)
print(bmw.valueState)
// заехали в гараж, выключаем автомобиль
bmw.engineState = .stop
bmw.windowState = .close
bmw.changeValueState()
print(bmw.engineState)
print(bmw.windowState)
print(bmw.valueState)

