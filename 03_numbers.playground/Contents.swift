import UIKit

let age: UInt8 = 28
print(age)

let minValue = UInt8.min
let maxValue = UInt8.max

let intMinValue = Int.min
let intMaxValue = Int.max

let int64MaxValue = Int64.max

let floatNumber = 3.14

let doubleNumber = 3.1415926512131412

print(type(of: floatNumber))
print(type(of: doubleNumber))

// Decimal integer
let decimalInteger = 17 // 1*10 + 7
let binaryInteger = 0b10001
let octalInteger = 0o21
let hexaldecimalInteger = 0x11
let exponentDouble = 1.238933e12
print(exponentDouble)
let hexadecimalDouble = 0xC.3p0

let paddedDouble = 0000123.456
let someNumber = 000000098.345
let readableNumber = 1_000_000_000
print(readableNumber)
let justMoreThanAMillion = 1_000_000.000_000_1

// Casting number
let twoThousand: UInt16 = 2_000
let one: UInt8 = 1
let twoThousandAndOne = twoThousand + UInt16(one)

print(twoThousandAndOne, type(of: twoThousandAndOne))

// Type aliases
typealias AudioSample = UInt16
var maxAmplitude = AudioSample.max
