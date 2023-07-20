import UIKit

struct TimesTable {
    let multiplier: Int
    
    subscript(index: Int) -> Int {
        return multiplier * index
    }
}

let threeTimesTable = TimesTable(multiplier: 3)

print(threeTimesTable[3])

for index in 0...10 {
    print("\(index) * 3 = \(threeTimesTable[index])")
}

enum Planet: Int {
    case mercury = 1, venus, earth, mars, jupiter, satrun, uranus, neptune, none = -1
    static subscript(n: Int) -> Planet {
        let possiblePlanet = Planet(rawValue: n)
        
        if let planet = possiblePlanet {
            return planet
        } else {
            return Planet.none
        }
    }
}

Planet[0]
Planet[1]
Planet[2]
Planet[3]
Planet[4]
Planet[1000]
