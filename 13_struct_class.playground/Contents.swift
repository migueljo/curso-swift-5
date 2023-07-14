import UIKit

// Struct vs Class

// Struct are used as data simple containers
struct SomeStruct {
    // Struct definition
}

class SomeClass {
    // Class definition
}

struct Resolution {
    var width = 0
    var height = 0
}

class VideoMode {
    var resolution = Resolution()
    var interlaced = false
    var frameRate = 0.0
    var name: String?
}

var someResolution = Resolution()
let someVideoMode = VideoMode()

print(someResolution.width)
someResolution.width = 1280
print(someResolution.width)

someVideoMode.resolution.width = 1280
print(someVideoMode.resolution.width)
someVideoMode.frameRate = 30.0
print(someVideoMode.frameRate)

let vga = Resolution(width: 640, height: 480)
vga.width
vga.height

let hd = Resolution(width: 1920, height: 1080)
var cinema = hd
print("\(cinema.width) x \(cinema.height)")
cinema.height = 1080
cinema.width = 2048
print("\(cinema.width) x \(cinema.height)")

enum CompassPoint {
    case east, west, north, south
}

var currentDirection = CompassPoint.north
var oldDirection = currentDirection

print("\(currentDirection) \(oldDirection)")
currentDirection = .south
print("\(currentDirection) \(oldDirection)")

let tenEighty = VideoMode()
tenEighty.resolution = hd
tenEighty.interlaced = true
tenEighty.name = "1080i"
tenEighty.frameRate = 25

let alsoTenEighty = tenEighty
alsoTenEighty.frameRate = 30

tenEighty

tenEighty === alsoTenEighty
