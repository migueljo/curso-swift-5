import UIKit

let names = ["Miguel", "Andrés", "Carolina"]

for name in names {
    print("Hola \(name)")
}

let numberOfLegs = ["spider": 8, "ant": 6, "dog": 4]

for (animalName, legs) in numberOfLegs {
    print("\(animalName) has \(legs) legs")
}

for index in 1...5 {
    print("Index: \(index)")
}

let base = 2
let power = 10
var answer = 1

for _ in 0..<power {
    answer *= base
    print(answer)
}

var hour = 9
let minutes = 60
for tickMark in stride(from: 0, to: minutes, by: 5) {
    print("\(hour):\(tickMark)")
}
