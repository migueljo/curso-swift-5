import UIKit

let areApplesRed = true
let isDeliciousFood = false

var isAged: Bool

if isDeliciousFood {
    print("La comida está deliciosa")
} else {
    print("La comida no está deliciosa")
}

// Tuplas
let http404Error = (404, "Not found")
let (statusCode, statusMessage) = http404Error

print("Status code: \(statusCode); Status message: \(statusMessage)")

let (justStatusCode, _) = http404Error
print(justStatusCode)

print("Status code: \(http404Error.0) - Status message: \(http404Error.1)")

let http200Status = (statusCode: 200, statusMessage: "Ok")
print("Status code: \(http200Status.statusCode) - Status message: \(http200Status.statusMessage)")

// Optionals
let ageString = "28"
let convertedAge = Int(ageString)

print(type(of: convertedAge)) // Optional(Int)

var serverResponseCode: Int? = 404
serverResponseCode = nil

var serveyAnswer: String?

if convertedAge != nil {
    print("Age exists: \(convertedAge!)")
} else {
    print("Age does not exist")
}
