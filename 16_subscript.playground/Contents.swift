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

Planet[2]
Planet[1000]

// Matrix
let m1: [[String]] = [["a", "b", "c"], ["d", "e", "f"]]
print(m1[0][0])

struct Matrix {
    let rows: Int, columns: Int
    var grid: [Double]
    
    init(rows: Int, columns: Int) {
        self.rows = rows
        self.columns = columns
        self.grid = Array(repeating: 0.0, count: rows * columns)
    }
    func indexIsValid(row: Int, column: Int) -> Bool {
        return row >= 0 && column >= 0 && row < rows && column < columns
    }
    subscript(row: Int, column: Int) -> Double {
        get {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            return grid[row * columns + column]
        }
        set {
            assert(indexIsValid(row: row, column: column), "Index out of range")
            grid[row * columns + column] = newValue
        }
    }
}

var matrix = Matrix(rows: 2, columns: 2)
matrix[0, 0] = 0.0
matrix[0, 1] = 0.1
matrix[1, 0] = 1.0
matrix[1, 1] = 1.1

print("Matrix: \(matrix[0, 0]), \(matrix[0, 1]), \(matrix[1, 0]), \(matrix[1, 1])")

for row in 0..<matrix.rows {
    for column in 0..<matrix.columns {
        print("Row: \(row) - Column: \(column) = \(matrix[row, column])")
    }
}
