import UIKit
import Foundation

func greeting(person: String) -> String {
    let greet = "Hola, \(person)"
    return greet
}

print(greeting(person: "Miguel"))

func sayHelloWorld() -> String {
    return "Hello World"
}

sayHelloWorld()

func greeting(person: String, isMale: Bool) -> String {
    if isMale {
        return "Bienvenido Caballero \(person)"
    } else {
        return "Bienvenida Señorita \(person)"
    }
}

greeting(person: "Andrés", isMale: true)
greeting(person: "Carolina", isMale: false)

func greet2(person: String) {
    print("Hola \(person)")
}

greet2(person: "Carmen")

func printAndCount(string: String) -> Int {
    return string.count
}

func minMax(array: [Int]) -> (min: Int, max: Int)? {
    if array.isEmpty { return nil }
    var min = array[0]
    var max = array[0]
    
    for item in array {
        if item < min {
            min = item
        }
        if item > max {
            max = item
        }
    }
    
    return (min: min, max: max)
}

minMax(array: [])
minMax(array: [1, 2, 3, 4, 5, 6])

if let bounds = minMax(array: [1, 2, 3, 4, 5]) {
    print("min: \(bounds.min), max: \(bounds.max)")
}

func someFunction(f1 firstParamName: Int, f2 secondParamName: Int = 6) {
    print(firstParamName + secondParamName)
}

someFunction(f1: 1, f2: 2)
someFunction(f1: 4)

func greet3(_ person: String, from homeTown: String) -> String {
    return "Hola \(person) es un place que nos visites desde \(homeTown)"
}

greet3("Carmen", from: "Pijiño del Carmen")

func mean(prefix: String, _ numbers: Double..., suffix: String) -> Double {
    var total: Double = 0
    for n in numbers {
        total += n
    }
    return total / Double(numbers.count)
}

mean(prefix: "Mean", 5, 10, 5, 10, 5, 10, suffix: "Mean")

func mediaGeometric(_ numbers: Double...) -> Double {
    var total: Double = numbers[0]
    for n in numbers[1...] {
        total *= n
    }
    return pow(total, 1 / Double(numbers.count))
}

mediaGeometric(10, 10, 10)

var x = 5
func addOne(number: Int) {
    var number2 = number
    number2 += 1
    print("El número ahora vale \(number2)")
}
addOne(number: x)

// inout allow to pass values as references to functions instead of as copies
func swapTwoInts(_ a: inout Int, _ b: inout Int) {
    var tempA = a
    var tempB = b
    a = tempB
    b = tempA
}

var someA = 10
var someB = 12
print("\(someA) \(someB)")
swapTwoInts(&someA, &someB)
print("\(someA) \(someB)")
