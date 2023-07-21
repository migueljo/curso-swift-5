import UIKit

class Person {
    var residence: Residence?
}

class Residence {
    var numberOfRooms = 1
}

let edgar = Person()
let roomCount = edgar.residence?.numberOfRooms

if let roomCount2 = edgar.residence?.numberOfRooms {
    print("La casa de Edgar tiene \(roomCount2) habitación(es)")
} else {
    print("Edgar no tiene casa 😢")
}

edgar.residence = Residence()
if let roomCount2 = edgar.residence?.numberOfRooms {
    print("La casa de Edgar tiene \(roomCount2) habitación(es)")
} else {
    print("Edgar no tiene casa 😢")
}
