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

// Sets
var letters = Set<Character>("a")

letters.insert("b")
letters.insert("c")
letters

var favoriteGames: Set<String> = ["Resident Evil", "Fifa", "Devil may cry"]
favoriteGames.count

if favoriteGames.isEmpty {
    print("No hay juegos favoritos")
} else {
    print("Los juegos favoritos son: \(favoriteGames)")
}

favoriteGames.insert("Call of duty")
favoriteGames.insert("Sekiro")
favoriteGames.insert("PES")

if let removedGame = favoriteGames.remove("PES") {
    print("PES was removed")
}

if favoriteGames.contains("Fifa") {
    print("Fifa está en tu lista de juegos favoritos")
}

for (index, game) in favoriteGames.sorted().enumerated() {
    print("\(index) - \(game) está en tu lista de favoritos")
}

let movies: Set = ["Batman", "Avengers", "Tenet", "Tenet"]

let oddDigits: Set = [1, 3, 5, 7, 9]
let evenDigits: Set = [0, 2, 4, 6, 8, 10]
let primeNumbers: Set = [2, 3, 5, 7]

// A union B = elementos de A Y B
oddDigits.union(evenDigits).sorted()

// A intersection B = elementos que están en A y B
oddDigits.intersection(evenDigits).sorted()
oddDigits.intersection(primeNumbers).sorted()

// A - B = Elementos que son de A pero no de B
oddDigits.subtracting(primeNumbers).sorted()
primeNumbers.subtracting(oddDigits).sorted()

// A differencia simetrica B ( (A - B) union (B - A) ) = Los elementos que solo estén en A y los que solo estén en B
// Es decir se eliminar los elementos repetidos
oddDigits.symmetricDifference(primeNumbers).sorted()
evenDigits.symmetricDifference(primeNumbers).sorted()

let houseAnimals: Set = ["🐶", "😼"]
let farmAnimals: Set = ["🐄", "🐓", "🐑", "🐶", "😼"]
let cityAnimals: Set = ["🐀", "🕊️"]

houseAnimals.isSubset(of: farmAnimals)
farmAnimals.isSuperset(of: houseAnimals)
// A y B son disjuntos si su intersección es vacía
farmAnimals.isDisjoint(with: cityAnimals)
farmAnimals.intersection(cityAnimals).count == 0

// Dictionaries
var integerNames: [Int: String] = [Int: String]()
integerNames = [0: "cero", 1: "uno", 2: "dos", 3: "tres"]
integerNames[3]
integerNames = [:]

var airports: [String: String] = [
    "YYZ": "Toronto",
    "DUB": "Dublin",
    "PMI": "Palma de Mallorca"
]
airports["LHR"] = "London Heathrow"

let dubAirport = "DUB"
if let airport = airports[dubAirport] {
    print("El aeropuerto de \(dubAirport) es: \(airport)")
}
airports["PMI"] = nil
airports.removeValue(forKey: dubAirport)
if let airportToRemove = airports.removeValue(forKey: "YYZ") {
    print("El aeropuerto \(airports) ha sido eliminado")
}
airports

// TODO: Create a dictionary with family members
let familyDictionary = ["mom": "Carmen Martínez", "dad": "Miguel Ángel Martínez", "brother": "Andrés Martínez", "sister": "Carolina"]

for (relation, name) in familyDictionary {
    print("My \(relation) name is \(name)")
}

for familyMember in familyDictionary.keys {
    print("\(familyMember)")
}

for memberName in familyDictionary.values {
    print("\(memberName)")
}

let familyMember = [String](familyDictionary.keys)
print(familyMember)
let memberName = [String](familyDictionary.values)
print(memberName)

/**
 func calculateStatistics(scores: [Int]) -> (min: Int, max: Int, sum: Int) {
     var min = scores[0]
     var max = scores[0]
     var sum = 0

     for score in scores {
         if score > max {
             max = score
         } else if score < min {
             min = score
         }
         sum += score
     }


     return (min, max, sum)
 }
 let statistics = calculateStatistics(scores: [5, 3, 100, 3, 9])
 print(statistics.sum)
 print(statistics.min)
 print(statistics.max)

 [1, 2, 3, 4].map({ number in number % 2 != 0 ? 0 : 3 * number })
 [1, 2, 3, 4].map { number in number % 2 != 0 ? 0 : 3 * number }
 [1, 2, 3, 4].map { $0 % 2 != 0 ? 0 : 3 * $0 }

 */
