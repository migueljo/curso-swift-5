import UIKit

class Counter {
    var count = 0
    
    func increment() {
        self.count += 1
    }
    
    func increment(by amount: Int) {
        self.count += amount
    }
    
    func decrement() {
        self.count -= 1
    }
    
    func decrement(by amount: Int) {
        self.count -= amount
    }
    
    func reset() {
        self.count = 0
    }
}

let counter = Counter()

counter.count
counter.increment(by: 10)
counter.increment()
counter.decrement(by: 5)
counter.decrement()
counter.count
counter.reset()
counter.count

// Mutating methods in Struct and Enum

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRight(of x: Double) -> Bool {
        return self.x > x
    }
    
    mutating func moveBy(x deltaX: Double, y deltaY: Double) {
        // self.x += deltaX
        // self.y += deltaY
        self = Point(x: self.x + deltaX, y: self.y + deltaY)
    }
}

var point = Point()
point.x = 4
point.y = 5
point.isToTheRight(of: 3)
point.moveBy(x: 10, y: 10)

enum DifferentStateSwitch {
    case off, low, high
    mutating func next() {
        switch self {
            case .off:
                self = .low
            case .low:
                self = .high
            case .high:
                self = .off
        }
        
    }
}

var switchState = DifferentStateSwitch.off
switchState.next()
switchState.next()
switchState.next()
