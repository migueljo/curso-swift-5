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

struct Point {
    var x = 0.0, y = 0.0
    func isToTheRight(of x: Double) -> Bool {
        return self.x > x
    }
}

let point = Point(x: 4, y: 5)
point.isToTheRight(of: 3)
