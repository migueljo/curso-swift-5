import UIKit

// 1. Global functions
// 2. Nested functions
// 3. Closure

let names = ["Miguel", "Carmen", "Andrés", "Carolina"]

func desc(_ s1: String, _ s2: String) -> Bool {
    return s1 > s2
}
func asc(_ s1: String, _ s2: String) -> Bool {
    return s1 < s2
}

var reversedNames = names.sorted(by: asc)
print(reversedNames)

/**
 { (params) -> return type in
    // Code
 }
 */

print(names.sorted(by: { (a, b) -> Bool in return a > b }))
print(names.sorted(by: { (a, b) -> Bool in a > b }))
print(names.sorted(by: { (a, b) in a > b }))
print(names.sorted(by: { a, b in a > b }))
print(names.sorted(by: { $0 > $1 }))
print(names.sorted(by: >))

func someFunctionThatTakesAClosure(closure: () -> Void) {
    // Code
    closure()
}

// This is a traling closure 🤯
someFunctionThatTakesAClosure {
    print("Hello from a closure 0")
}
someFunctionThatTakesAClosure(closure: { print("Hello from a closure 1") })

reversedNames = names.sorted {$0 > $1}

let digitNames = [0: "Cero", 1: "Uno", 2: "Dos", 3: "Tres", 4: "Cuatro", 5: "Cinco", 6: "Seis", 7: "Siete", 8: "Ocho", 9: "Nueve"]

let numberStrings = [4, 0, 1, 5, -6].map({ n -> String in
    let originalN = n
    let positiveN = abs(n)
    var output = "\(digitNames[positiveN]!)"
    output = originalN < 0 ? "Menos \(output)" : output
    return output
})
print(numberStrings)
