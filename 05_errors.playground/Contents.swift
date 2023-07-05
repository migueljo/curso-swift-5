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
