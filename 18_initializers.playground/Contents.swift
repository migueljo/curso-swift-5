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
