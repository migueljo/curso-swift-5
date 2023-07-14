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