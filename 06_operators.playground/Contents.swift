import UIKit

let a = 10
var b = 5
b = a

let (x, y) = (1, 2)

if a == b {
    print("A y B son iguales")
}

var number = 5
number += 1
number -= 2

// Comparing
1 == 1
1 > -1
1 < 2
1 != 2
1 >= 2

(29, "Miguel Martínez") > (19, "Andrés Martínez")
"Miguel Martínez" > "Andrés Martínez"
"Miguel Martínez".count
"Andrés Martínez".count

(28, "Miguel Martínez") < (31, "Juan Gomila")
(28, "Miguel Martínez") > (31, "Juan Gomila")
(28, "Miguel Martínez") == (31, "Juan Gomila")

// Ternary operator

let miguelAge = 28;
let miguelIsAdult = miguelAge > 18 ? "Miguel is an adult" : "Miguel is not an adult"

// Nil coalescing operator
let defaultAge = 18
var userAge: Int?

var agetToBeUsed = userAge ?? defaultAge

// Range: Closed, Open, Semi open
// Closed range: include the first one and last one
for index in 1...5 {
    print("Closed range: \(index)")
}
// Semi open range: include the first one but not the last one
for index in 1..<5 {
    print("Semi open range: \(index)")
}

let names = ["Miguel", "Andrés", "Mami", "Papa", "Caro"]

for i in 0..<names.count {
    let name = names[i]
    print("Current name: \(name)")
}

// Open range
for name in names[1...] {
    print("Open range: \(name)")
}

for name in names[..<names.count] {
    print("Open range 2: \(name)")
}

let range = ...5
range.contains(-3)

for name in names {
    print("The name is: \(name)")
}

for closed in 18...28 {
    print("Closed \(closed)")
}

for semiOpen in 0..<4 {
    print("Semi open \(semiOpen)")
}

for open in names[...2] {
    print("Open: \(open)")
}

let allowEntry = false

if !allowEntry {
    print("Acceso denegado")
}

let enterDoorCode = true
let passRetinaScan = false

if enterDoorCode && passRetinaScan {
    print("Acceso concedido")
} else {
    print("Acceso denegado")
}

let hasMoney = true
let hasInvitation = false

if hasMoney || hasInvitation {
    print("Bienvenido a la fiesta")
} else {
    print("No eres bienvenido aquí")
}
