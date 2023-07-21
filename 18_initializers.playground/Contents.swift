import UIKit

struct Fahrenheit {
    var temperature: Double
    init(temperature: Double) {
        self.temperature = temperature
    }
}

var f1 = Fahrenheit(temperature: 32.0)
f1.temperature

struct Celcius {
    var temperature: Double
    init(fromFahrenheit fahrenheit: Double) {
        self.temperature = (fahrenheit - 32) / 1.8
    }
    
    init(fromKelvin kelvin: Double) {
        self.temperature = kelvin - 273.15
    }
}

let waterBoilingPoint = Celcius(fromFahrenheit: 212)
let waterFreezingPoint = Celcius(fromKelvin: 273.15)
waterBoilingPoint.temperature
waterFreezingPoint.temperature

struct Color {
    let red, green, blue: Double
    init(red: Double, green: Double, blue: Double) {
        self.red = red
        self.green = green
        self.blue = blue
    }
    init(white: Double) {
        self.red = white
        self.green = white
        self.blue = white
    }
}

let magenta = Color(red: 1, green: 0, blue: 1)
let halfGray = Color(white: 0.5)
let gree = Color(red: 0, green: 1, blue: 0)

class SurveyQuestion {
    var text: String
    var response: String?
    
    init(text: String) {
        self.text = text
    }
    
    func ask() {
        print(self.text)
    }
}

let q1 = SurveyQuestion(text: "Te gustan los tacos?")
q1.ask()

// Init designado -> Designado super clase
// Init conveniencia -> Otro init de la misma clase
// El último init que se llame siempre debe ser designado

class Vehicle {
    var wheels = 0
    var description: String {
        return "\(wheels) ruedas"
    }
}

let vehicle = Vehicle()
vehicle.description

class Bicycle: Vehicle {
    override init() {
        super.init()
        self.wheels = 2
    }
}

class Hoverboard : Vehicle {
    var color: String
    init(color: String) {
        self.color = color
        // aquí se llama implícitamente a super.init() (Despues de que termine la init)
    }
    override var description: String {
        return "\(super.description) en el color \(self.color)"
    }
}

let hoverboard = Hoverboard(color: "amarillo")
print(hoverboard.description)

enum TemperatureUnit {
    case kelvin, celcius, fahrenheit
    
    init?(symbol: Character) {
        switch symbol {
            case "K":
                self = .kelvin
            case "C":
                self = .celcius
            case "F":
                self = .fahrenheit
            default:
                return nil
        }
    }
}

let someUnit = TemperatureUnit(symbol: "O")

class Product {
    let name: String
    init?(name: String) {
        if name.isEmpty {
            return nil
        }
        self.name = name
    }
}

class CartItem: Product {
    let quantity: Int
    init?(name: String, quantity: Int) {
        if quantity < 1 {
            return nil
        }
        self.quantity = quantity
        super.init(name: name)
    }
}

if let someSocks = CartItem(name: "Socks", quantity: 2) {
    print("\(someSocks.name) - \(someSocks.quantity)")
}
