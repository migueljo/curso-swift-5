import UIKit

class Person {
    var residence: Residence?
}

class Residence {
    var address: Address?
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
    func printNumberOfRoom() {
        print("El número de habitaciones es \(numberOfRooms)")
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

func createAddress() -> Address {
    print("Creating address")
    let someAddress = Address()
    someAddress.buildingNumber = "13"
    someAddress.street = "Calle de Platzi"
    return someAddress
}

let edgar = Person()
if let roomCount = edgar.residence?.numberOfRooms {
    print("La casa de Edgar tiene \(roomCount) habitación(es)")
} else {
    print("Edgar no tiene casa 😢")
}
edgar.residence?.address = createAddress()
edgar.residence?.printNumberOfRoom()

func x() {
    print("X")
}

if edgar.residence?.printNumberOfRoom() != nil {
    print("He podido obtener el número de habitaciones")
} else {
   print("No ha sido posible saber el número de habitaciones")
}

if (edgar.residence?.address = createAddress()) != nil {
    print("Dirección de Edgar configurada")
} else {
    print("Seguimos sin saber donde vive Edgar")
}

if let firstRoomName = edgar.residence?[0].name {
    print("Primera habitación: \(firstRoomName)")
} else {
    print("No hay primera habitación")
}

edgar.residence?[0] = Room(name: "Bathroom")

let edgarHouse = Residence()
edgarHouse.rooms.append(Room(name: "Bathroom"))
edgarHouse.rooms.append(Room(name: "Living room"))
edgarHouse.rooms.append(Room(name: "Kitchen"))
edgar.residence = edgarHouse

if let firstRoomName = edgar.residence?[0].name {
    print("Primera habitación: \(firstRoomName)")
} else {
    print("No hay primera habitación")
}
