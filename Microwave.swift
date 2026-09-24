import Foundation

// Base heating time variable
var baseTime: Double = 0.0
var item = ""

// Loop until a valid item is entered
while true {
    print("Enter item (sub, pizza, soup): ", terminator: "")
    
    if let input = readLine()?.trimmingCharacters(in: .whitespacesAndNewlines).lowercased() {
        if input == "sub" {
            baseTime = 60.0
            item = input
            break
        } else if input == "pizza" {
            baseTime = 45.0
            item = input
            break
        } else if input == "soup" {
            baseTime = 105.0
            item = input
            break
        }
    }
    print("Invalid item. Please try again.")
}

var quantity = 0

// Loop until a valid integer between 1 and 3 is entered
while true {
    print("Enter quantity (1-3): ", terminator: "")
    
    if let input = readLine(), let num = Int(input.trimmingCharacters(in: .whitespacesAndNewlines)) {
        if num >= 1 && num <= 3 {
            quantity = num
            break
        }
    }
    print("Invalid quantity. Must be 1, 2, or 3.")
}

// Calculate heating time multiplier based on quantity
var totalSeconds = baseTime
if quantity == 2 {
    totalSeconds *= 1.5 // 50% increase
} else if quantity == 3 {
    totalSeconds *= 2.0 // 100% increase
}

// Convert total seconds to minutes and seconds
let minutes = Int(totalSeconds) / 60
let seconds = Int(totalSeconds) % 60

// Display total time with valid units
print("\nTotal time for \(quantity) \(item)(s):")
print("\(minutes) minute(s) \(seconds) second(s)")