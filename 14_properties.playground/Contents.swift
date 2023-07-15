import UIKit

// Stored properties = fields in a Struct and Class
struct FixedLengthRange {
    var firstValue: Int
    let length: Int
}

var rangeOfThreeItems = FixedLengthRange(firstValue: 0, length: 3)
rangeOfThreeItems.firstValue = 6

let fourItemsRange = FixedLengthRange(firstValue: 0, length: 4)
// fourItemsRange.firstValue = 3 This throws error

