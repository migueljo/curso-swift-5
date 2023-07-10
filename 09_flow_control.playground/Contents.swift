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

// While
let limit = 10
var i = 0
while i < limit {
    print(i)
    i += 1
}

repeat {
    print("Hello from repeat")
} while i > 100

// Calculate prime numbers between 0 and 100
func isPrime(number: Int) -> Bool {
    var i = 1
    var counter = 0
    while i <= number {
        if number % i == 0 {
            counter += 1
        }
        if counter > 2 {
            return false
        }
        i += 1
    }
    return counter == 2
}

var primeNumbers = [Int]()
var primeNumbersLimit = 100
var primeNumberIndex = 1

while primeNumberIndex <= primeNumbersLimit {
    if isPrime(number: primeNumberIndex) {
        primeNumbers += [primeNumberIndex]
    }
    primeNumberIndex += 1
}
print(primeNumbers)

// If else
var temp = 15
if temp <= 15 {
    print("Hace mucho frío!!")
} else if temp >= 25 {
    print("Hace mucho calor!!")
} else {
    print("La temperatura es agradable")
}

// Switch case
var someChar: Character = "z"
switch someChar {
    case "a", "A":
        print("Primera letra del alfabeto")
    case "z", "Z":
        print("Es la última letra del alfabeto")
    default:
        print("Es alguna otra letra?")
}

// Challenge
func isVowel(letter: String) -> Bool {
    let vowels = "aeiou"
    return vowels.firstIndex(of: Character(letter.lowercased())) != nil ? true : false
}

let randomLetters = ["a", "A", "b", "B", "e", "E", "i", "I", "o", "O", "u", "U"]

for letter in randomLetters {
    print("The letter \"\(letter)\" is a vowel? -> \(isVowel(letter: letter))")
}

let moons = 1200
let phrase = "lunas en Saturno"
let naturalCount: String
switch moons {
case 0:
    naturalCount = "No hay"
case 1..<5:
    naturalCount = "Hay unas pocas"
case 5..<12:
    naturalCount = "Hay bastantes"
case 12..<100:
    naturalCount = "Hay decenas de"
case 100...1000:
    naturalCount = "Hay centenares de"
default:
    naturalCount = "Hay muchisimas"
}
print("\(naturalCount) \(phrase)")
