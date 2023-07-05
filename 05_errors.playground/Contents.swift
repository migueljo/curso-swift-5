import UIKit

enum MyError: Error {
    case noBread
    case noCheese
}

func makeASandwich() throws {
    throw MyError.noCheese
}

do {
    try makeASandwich()
    print("Me como el sandwich")
} catch MyError.noBread {
    print("😢 tengo hambre, por que no hay pan?")
} catch MyError.noCheese {
    print("😢 tengo hambre, por que no hay queso?")
}

// Assertions(debug) and preconditions(build)

let age = -5
// assert(age >= 0, "La edad no puede ser negativa")
precondition(age >= 0, "La edad no puede ser negativa")

if (age > 10) {
    print("Puedes subir a la montaña rusa")
} else {
    print("No puedes subir a la montaña rusa")
}
