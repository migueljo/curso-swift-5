import UIKit

enum CompassPoint {
    case north
    case south
    case east
    case west
}

enum Planet {
    case mercury, venus, earth, mars, jupiter, saturn, uranus, neptune
}

var directionToGo = CompassPoint.east
directionToGo = .east

switch directionToGo {
    case .north:
        print("Hay que ir al norte")
    case .east:
        print("Hay que ir al este")
    case .south:
        print("Hay que ir al sur")
    case .west:
        print("Hay que ir al oeste")
}

let somePlanet = Planet.jupiter
switch somePlanet {
    case .earth:
        print("La tierra es segura para vivir")
    default:
        print("Este planeta es inhabitable")
}

// CaseIterable is a protocol that allow us to iterate over the enum
// A protocol allows to delegate tasks without the need for us to code it
enum Beverage: CaseIterable {
    case coffee, tea, juice, redbull
}

for drink in Beverage.allCases {
    print(drink)
}

enum MyFavoriteFruits: CaseIterable {
    case mangos, strawberries, bananas, watermelons
}

for fruit in MyFavoriteFruits.allCases {
    print("I love \(fruit)")
}

enum BarCode {
    case upc(Int, Int, Int, Int)
    case qrCode(String)
}

var productBarCode = BarCode.upc(8, 87654, 67898, 3)
// productBarCode = .qrCode("qweasdasdqw")

switch productBarCode {
    case let .upc(numberSystem, manufacturer, product, check):
        print("UPC: \(numberSystem) \(manufacturer) \(product) \(check)")
    case let .qrCode(value):
        print("QR: \(value)")
}
