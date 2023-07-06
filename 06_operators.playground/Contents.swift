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
