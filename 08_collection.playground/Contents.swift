import UIKit

// Collections
// Array, Conjuntos, Diccionarios

// Array
var someInts = [Int]()
someInts.count
someInts.append(29)
someInts.append(contentsOf: [19, 16, 55, 54])
someInts = []

var someDoubles = Array(repeating: 29.3, count: 3)
someDoubles
var moreDoubles = Array(repeating: 2.5, count: 4)
var lotsOfDoubles = someDoubles + moreDoubles
lotsOfDoubles.append(contentsOf: [1.4, 1.5])

var shoppingList: [String] = ["Papas", "Pimiento", "Tortillas", "Cerdo", "Cebolla"]
shoppingList.count

var 👨‍👩‍👦‍👦 = ["Miguel Ángel", "Carmen", "Carolina", "Andrés", "Miguel"]
print(👨‍👩‍👦‍👦)

👨‍👩‍👦‍👦.enumerated().map({ (index, member) in
    print("Family member # \(index) is: \(member)")
})

shoppingList.append("Cola roman")
if shoppingList.isEmpty {
    print("La lista de la compra está vacía")
} else {
    for item in shoppingList {
        print("The item is: \(item)")
    }
}

shoppingList += ["Totopos", "Guacamole"]

var firstElement = shoppingList[0]
shoppingList[0] = "Huevos"

shoppingList[1...2]
shoppingList[1...2] = ["Ajonjolí", "Arepa", "Suero"]
shoppingList

let pepper = shoppingList.remove(at: 1)
shoppingList.removeLast()

for item in shoppingList {
    print(item)
}

for (index, item) in shoppingList.enumerated() {
    print("The item #\(index) is \(item)")
}
print("#########################################")
shoppingList.enumerated().map({ (index, item) in
    print("The item #\(index) is \(item)")
})

