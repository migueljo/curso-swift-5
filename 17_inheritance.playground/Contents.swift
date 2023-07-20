import UIKit

class Vehicle {
    var currentSpeed = 0.0
    var description: String {
        return "Viajando a \(currentSpeed) km/h"
    }
    func makeNoise() {
        // Do nothing, because each vehicle has its own noise
        print("...")
    }
}

let someVehicle = Vehicle()
someVehicle.description

class Bicycle : Vehicle {
    var hasBasket = false
    override func makeNoise() {
        print("Clin Clin")
    }
}

let bicycle = Bicycle()
bicycle.hasBasket = true
bicycle.currentSpeed = 15.0

bicycle.description

class Tandem : Bicycle {
    var currentNumberOfPassengers = 0
}

let tandem = Tandem()
tandem.hasBasket = true
tandem.currentNumberOfPassengers = 2
tandem.currentSpeed = 22.0
tandem.description

class Train : Vehicle {
    var numberOfWagons = 0
    
    override func makeNoise() {
        print("Choo Choo")
    }
}

let train = Train()
train.makeNoise()

tandem.makeNoise()

class Car: Vehicle {
    var gear = 1
    override var description: String {
        return super.description + " en la marcha \(gear)"
    }
}
let car = Car()
car.currentSpeed = 55
car.gear = 3
print(car.description)
print(tandem.description)

class AutomaticCar: Car {
    override var currentSpeed: Double {
        didSet {
            gear = Int(currentSpeed / 15.0) + 1
        }
    }
}

let autoCar = AutomaticCar()
autoCar.currentSpeed = 100
print(autoCar.description)
