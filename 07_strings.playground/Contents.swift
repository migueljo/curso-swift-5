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
