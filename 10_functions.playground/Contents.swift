import UIKit

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
