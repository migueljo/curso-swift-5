import UIKit

/**
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

 */

class Person {
    var residence: Residence?
}

class Residence {
    var rooms = [Room]()
    var numberOfRooms: Int {
        return self.rooms.count
    }
    subscript(i: Int) -> Room {
        get {
            return self.rooms[i]
        }
        set {
            self.rooms[i] = newValue
        }
    }
}

class Room {
    var name: String
    init(name: String) {
        self.name = name
    }
}

class Address {
    var buildingName: String?
    var buildingNumber: String?
    var street: String?
    
    func buildingIdentifier() -> String?{
        if let buildingNumber = self.buildingNumber, let street = self.street {
            return "\(buildingNumber), \(street)"
        } else if buildingName != nil {
            return buildingName
        } else {
            return nil
        }
    }
}
