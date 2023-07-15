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
