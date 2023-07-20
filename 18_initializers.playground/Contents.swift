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
