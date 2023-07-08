import UIKit

let someString = "Cadena de texto"
let multilineString = """
    Multi line text
    One
    Two Three
"""

print(multilineString)

let wiseWords = "\"La imaginación es mas importante que el saber\""
print(wiseWords)

let dolarSign = "\u{24} $ \u{2666} \u{1f496} 😁 🇨🇴 \u{1F1E8}\u{1F1F4}"

var emptyString = ""
var anotherEmptyString = String()

if emptyString.isEmpty {
    print("Empty string is indeed empty")
}

var newSomeString = "Un caballo"
newSomeString += " y un carruaje"
newSomeString += " y un soldado"

let name = "Juan Gabriel 😎"

for char in name {
    print("Current char: \(char)")
}

let exclamationMark: Character = "!"
let nameChars: [Character] = ["J", "o", "n"]
var nameString = String(nameChars + "y")

nameString.append(exclamationMark)
"\(nameString) \(exclamationMark)"

let multiplier = 3
let message = "El producto de \(multiplier) x 3.5 es \(Double(multiplier) * 3.5)\(exclamationMark)"

let myNameArray = ["M", "i", "g", "u", "e", "l"]

var myNameString = ""
for char in myNameArray {
    myNameString.append(char)
}
print(myNameString)
var myNameString2 = myNameArray.joined()

let chosenNumber = 5

for number in 0...10 {
    print("\(chosenNumber) x \(number) es: \(chosenNumber * number)")
}

let greeting = "Hola, que tal?"
greeting[greeting.startIndex]
greeting[greeting.index(before: greeting.endIndex)]

print(type(of: greeting.startIndex))

for index in greeting.indices {
    print(greeting[index], terminator: " :)\n")
}

var welcome = "Hola"
welcome.insert("!", at: welcome.endIndex)
welcome.insert(contentsOf: " que tal", at: welcome.index(before: welcome.endIndex))

welcome.remove(at: welcome.index(before: welcome.endIndex))

let range = welcome.index(welcome.startIndex, offsetBy: 4)..<welcome.endIndex
welcome.removeSubrange(range)

// Working with substrings
let commaIndex = greeting.firstIndex(of: ",") ?? greeting.endIndex
let firstPart = greeting[..<commaIndex]
// let lastPart = greeting[greeting.index(after: commaIndex)...greeting.index(before: greeting.endIndex)]
let lastPart = greeting[greeting.index(after: commaIndex)...]

print(type(of: firstPart))
print(type(of: lastPart))
print(type(of: String(firstPart)))

// Prefixes Sufixes
let newGreeting = "Hola, soy Miguel Martínez"
newGreeting.hasPrefix("Hola")
newGreeting.hasSuffix("nez")

let collections = [
    "Act 1, Scene 1", "Act 1, Scene 2", "Act 1, Scene 3", "Act 1, Scene 4", "Act 1, Scene 5",
    "Act 2, Scene 1", "Act 2, Scene 2", "Act 2, Scene 3",
    "Act 3, Scene 1", "Act 3, Scene 2"
]

var act1ScenesCount = 0

for scene in collections {
    if scene.hasPrefix("Act 1") {
        act1ScenesCount += 1
    }
}

print("El número de escenas del acto 1 es: \(act1ScenesCount)")
