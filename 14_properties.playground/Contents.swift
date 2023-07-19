import UIKit

// Stored properties = fields in a Struct and Class
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

let fourItemsRange = FixedLengthRange(firstValue: 0, length: 4)
// fourItemsRange.firstValue = 3 This throws error

// Lazy stored properties

class DataImported {
    var filename = "data.txt"
}

class DataManager {
    lazy var importer = DataImported()
    var data = [String]()
}

let manager = DataManager()
manager.data.append("Datos")
manager.data.append("Más datos")
manager
// Hasta esta linea el importer no ha sido creado debido a que es una lazy property
manager.importer.filename
// Aqui ya está creada
manager

// Computed properties

struct Point {
    var x = 0.0, y = 0.0
}

struct Size {
    var width = 0.0, height = 0.0
}

struct Rect {
    var origin = Point()
    var size = Size()
    var center: Point {
        get {
            let centerX = size.width / 2 + origin.x
            let centerY = size.height / 2 + origin.y
            return Point(x: centerX, y: centerY)
        }
        set(newCenter) { // if we remove the newCenter param we can access "newValue" to get the new value
            origin.x = newCenter.x - size.width / 2
            origin.y = newCenter.y - size.height / 2
        }
    }
}

var square = Rect(origin: Point(x: 0, y: 0), size: Size(width: 10, height: 10))
square.center
square.center = Point(x: 18, y: 3)

// Readonly computed properties
struct Cuboid {
    var width = 0.0, height = 0.0, depth = 0.0
    var volume: Double {
        return width * height * depth // Read only
    }
}

let cuboid = Cuboid(width: 4, height: 6, depth: 2)

cuboid.volume
// cuboid.volume = 34

class Person {
    var weight: Double, height: Double
    init(weight: Double, height: Double) {
        self.weight = weight
        self.height = height
    }
    var mbi: Double {
        return self.weight / pow((height / 100), 2)
    }
}

let miguel = Person(weight: 85, height: 175)
miguel.mbi

// Property observers

class StepCounter {
    var totalSteps: Int = 0 {
        willSet(newTotalSteps) {
            print("El número de pasos va a subir a \(newTotalSteps)")
        }
        
        didSet {
            if (totalSteps > oldValue) {
                print("El número de pasos a incrementado en \(totalSteps - oldValue)")
            }
        }
    }
}

let steps = StepCounter()
steps.totalSteps = 10
steps.totalSteps = 30

class PlayerLife {
    var life: Double = 0 {
        willSet(newLifeValue) {
            print("The life value will be: \(newLifeValue)")
        }
        didSet {
            if life > 100 {
                life = 100
            }
            print("The life value is set to: \(life)")
        }
    }
}

let playerLife = PlayerLife()
playerLife.life = 99
playerLife.life = 120
